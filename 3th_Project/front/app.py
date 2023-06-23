from flask import Flask, jsonify, redirect, render_template, request, url_for, session, flash
import pandas as pd
from sentence_transformers import SentenceTransformer
from sklearn.metrics.pairwise import cosine_similarity
from flask_socketio import join_room, leave_room, send, SocketIO
import random
from string import ascii_uppercase

import json
import tensorflow as tf
from tensorflow.keras.preprocessing.sequence import pad_sequences
from tensorflow.keras.preprocessing.text import Tokenizer

import os
import cv2
from PIL import Image
import numpy as np
from tensorflow.keras.models import load_model

import pymysql
from werkzeug.security import generate_password_hash
from werkzeug.security import check_password_hash

app = Flask(__name__)
app.config['SECRET_KEY'] = 'mindhelper'


# 페이지 이동

@app.route('/')
def home():
    return redirect(url_for('login'))



@app.route('/index')
def index():
    if 'username' not in session:
        flash('로그인이 필요합니다.')

    return render_template('index.html', username=session.get('username'))




@app.route('/survey')
def survey():
    if 'username' not in session:
        return redirect(url_for('login')) 
    if 'username' in session:
        return render_template('survey.html', username=session.get('username'))


@app.route('/emotionDiary')
def emotionDiary():
    if 'username' not in session:
        return redirect(url_for('login')) 
    if 'username' in session:
        return render_template('emotionDiary.html', username=session.get('username'))


@app.route('/userprofile')
def userprofile():
    if 'username' not in session:
        return redirect(url_for('login')) 
    if 'username' in session:
        return render_template('userprofile.html', username=session.get('username'))





# 회원가입
def db_connector():
    db = pymysql.connect(host='project-db-stu.smhrd.com', port=3307,
                         user='smhrd', passwd='1234', db='smhrd', charset='utf8')
    cursor = db.cursor()
    return db, cursor


def close_db(db):
    db.close()


def fetch_all(query, cursor):
    cursor.execute(query)
    result = cursor.fetchall()
    return result


def insert_user(id, username, email, password, date, gender, cursor, db):
    hashed_password = generate_password_hash(password)  # Hash the password
    sql = f"INSERT INTO T_USER (USERID, USERNAME, USEREMAIL, USERPW, USERBIRTHDATE, USERGENDER, ADMINYN) VALUES (%s, %s, %s, %s, %s, %s, 'USER');"
    cursor.execute(sql, (id, username, email, hashed_password, date, gender,))
    db.commit()


@app.route('/register', methods=['POST'])
def register():
    id = request.form['id']
    username = request.form['username']
    email = request.form['email']
    password = request.form['password']
    date = request.form['date']
    gender = request.form['gender']

    try:
        db, cursor = db_connector()
        insert_user(id, username, email, password, date, gender, cursor, db)
        close_db(db)
        return jsonify(success_message=True)
    except Exception as e:
        print(f"An error occurred: {e}")
        return jsonify(success_message=False)
    

#로그인

def get_user(id, cursor):
    sql = "SELECT USERID, USERPW FROM T_USER WHERE USERID = %s"
    cursor.execute(sql, (id,))
    return cursor.fetchone()

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        # Get login details from request
        id = request.form['login_ID']
        password = request.form['login_PW']

        try:
            # Connect to the database
            db, cursor = db_connector()

            # Get the user from the database
            user = get_user(id, cursor)
            
            # Close the database connection
            close_db(db)

            if user and check_password_hash(user[1], password):
                # User exists and password is correct. Store user info in session.
                session['userid'] = user[0]
                session['username'] = user[0]  # Store the username in the session
                session.modified = True  # Manually flag the session as modified
                print(f"User {user[0]} logged in, session: {session}")  # Log the session

                # Return success response
                return jsonify(logged_in=True, username=user[0])

            else:
                # User does not exist or password is incorrect.
                return jsonify(error='로그인 정보가 일치 하지 않습니다.')

        except Exception as e:
            print(f"An error occurred: {e}")
            return jsonify(error='An error occurred during login.')
    
    else:  # GET request
        return render_template('login.html', username=session.get('username'))
    

@app.route('/logout')
def logout():
    # Clear session data
    session.clear()
    
    # Redirect to the login page
    return redirect(url_for('login'))

#텍스트 모델 및 위로 메시지 챗봇"아쿠아"
def load_model():
    model = SentenceTransformer('jhgan/ko-sroberta-multitask')
    return model


def load_dataset():
    df = pd.read_csv('wellness_dataset.csv')
    df['embedding'] = df['embedding'].apply(json.loads)
    return df


model = load_model()
df = load_dataset()


@app.route('/chatbot', methods=['POST'])
def chatbot():
    user_input = request.form['user_input']
    if user_input:
        embedding = model.encode([user_input])

        df['distance'] = df['embedding'].map(
            lambda x: cosine_similarity(embedding, [x]).squeeze())
        answer = df.loc[df['distance'].idxmax()]

        return answer['챗봇']
    else:
        return "Error: Please provide a user input."


# 텍스트모델 로드
textAi = tf.keras.models.load_model('./NLP.h5')


def analyze_sentiment(text):
    tokenizer = Tokenizer(char_level=True, oov_token='<OOV>')
    tokenizer.fit_on_texts([text])
    encoded = tokenizer.texts_to_sequences([text])
    pad_new = pad_sequences(encoded, maxlen=200)

    predict = textAi.predict(pad_new)

    confidence = float(predict)

    if confidence >= 0.5:
        label = '긍정'
    else:
        label = '부정'

    return confidence, label


@app.route('/analyze', methods=['POST'])
def analyze():
    text = request.json['text']  # POST 요청에서 'text' 필드 값을 가져옴
    if text:
        confidence, label = analyze_sentiment(text)

        # 결과를 JSON 형식으로 반환 (소수점 한 자리로 반올림)
        response = {'예측감정': label, 'score': round(confidence, 2)}
        return jsonify(response)
    else:
        return jsonify({'error': 'Error: Please provide a user input.'})


# 이미지 모델
MODEL_PATH = './NEWIMGAI.h5'
emotion_img_model = tf.keras.models.load_model(MODEL_PATH)


UPLOAD_FOLDER = 'static/uploads'
ALLOWED_EXTENSIONS = {'jpg', 'jpeg', 'png'}
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER


def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


def analyze_image(file_path):
    face_cascade = cv2.CascadeClassifier(cv2.data.haarcascades + './haarcascade_frontalface_default.xml')

    img = cv2.imread(file_path)
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

    faces = face_cascade.detectMultiScale(gray, scaleFactor=1.1, minNeighbors=5, minSize=(30, 30))
    print(faces)
    if len(faces) == 0:
        return {'error': 'No face detected'}

    (x, y, w, h) = faces[0]
    face_img = gray[y:y + h, x:x + w]

    face_img = cv2.resize(face_img, (64, 64))
    face_img = face_img.reshape(1, 64, 64, 1) / 255.0

    predictions = emotion_img_model.predict(face_img)
    emotion_labels = ["불안", "분노", "중립", "기쁨", "슬픔"]
    result = {label: int(prediction * 100) for label, prediction in zip(emotion_labels, predictions[0])}

    return result


@app.route('/emotion')
def emotion():
    if 'username' not in session:
        return redirect(url_for('login')) 
    return render_template('emotion.html', username=session.get('username'))


@app.route('/uploads', methods=['POST'])
def upload():
    if 'file' not in request.files:
        return jsonify({'error': 'No file uploaded'})

    file = request.files['file']
    if file.filename == '':
        return jsonify({'error': 'No file selected'})

    if file and allowed_file(file.filename):
        filename = file.filename
        file_path = os.path.join(app.config['UPLOAD_FOLDER'], filename)
        file.save(file_path)

        response = analyze_image(file_path)

        return jsonify({'result': response})
    else:
        return jsonify({'error': 'Invalid file type'})


if __name__ == '__main__':
    app.run()
