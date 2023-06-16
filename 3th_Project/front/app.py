from flask import Flask, jsonify, redirect, render_template, request, url_for,session
import pandas as pd
from sentence_transformers import SentenceTransformer
from sklearn.metrics.pairwise import cosine_similarity
from flask_socketio import join_room,leave_room,send,SocketIO
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

app = Flask(__name__)


def load_model():
    model = SentenceTransformer('jhgan/ko-sroberta-multitask')
    return model


def load_dataset():
    df = pd.read_csv('wellness_dataset.csv')
    df['embedding'] = df['embedding'].apply(json.loads)
    return df

@app.route('/')
def home():
    return redirect(url_for('index'))


@app.route('/index')
def index():
    return render_template('index.html')


@app.route('/survey')
def survey():
    return render_template('survey.html')

@app.route('/emotionDiary')
def emotionDiary():
    return render_template('emotionDiary.html')


@app.route('/userprofile')
def userprofile():
    return render_template('userprofile.html')


@app.route('/Counselorfile')
def Counselorfile():
    return render_template('Counselorfile.html')


@app.route('/login_Counselor')
def login_Counselor():
    return render_template('login_Counselor.html')


@app.route('/login')
def login():
    return render_template('login.html')



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



# 모델 및 토크나이저 로드
textAi = tf.keras.models.load_model('./NLP.h5')

def analyze_sentiment(text):
    tokenizer = Tokenizer(char_level=True, oov_token='<OOV>')
    tokenizer.fit_on_texts([text])
    encoded = tokenizer.texts_to_sequences([text])
    pad_new = pad_sequences(encoded, maxlen=200)
    
    predict = textAi.predict(pad_new)

    confidence = float(predict)

    if confidence >= 0.5:
        label = 'Positive'
    else:
        label = 'Negative'

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



# 채팅 코드
socketio = SocketIO(app)
app.config["SECRET_KEY"] = "mindhelper"
rooms = {}


def generate_unique_code(length):
    while True:
        code = ""
        for _ in range(length):
            code += random.choice(ascii_uppercase)

        if code not in rooms:
            break

    return code


@app.route('/chat', methods=["GET", "POST"])
def chat():
    session.clear()
    if request.method == "POST":
        name = request.form.get("name")
        code = request.form.get("code")
        join = request.form.get("join", False)
        create = request.form.get("create", False)

        if not name:
            return render_template("chat.html", error="Please enter a name.", code=code, name=name)

        if join != False and not code:
            return render_template("chat.html", error="Please enter a room code.", code=code, name=name)

        room = code
        if create != False:
            room = generate_unique_code(4)
            rooms[room] = {"members": [], "messages": []}
        elif code not in rooms:
            return render_template("chat.html", error="Room does not exist.", code=code, name=name)

        session["room"] = room
        session["name"] = name
        return redirect(url_for("chatroom"))

    return render_template('chat.html')




@app.route('/chatroom')
def chatroom():
    name = session.get("name")
    room = session.get("room")
    if room is None or session.get("name") is None or room not in rooms:
        return redirect(url_for("chat"))

    room_members = rooms[room]["members"]

    return render_template("chatroom.html", code=room, messages=rooms[room]["messages"], names=name, room_members=room_members)


@socketio.on("message")
def message(data):
    room = session.get("room")
    if room not in rooms:
        return

    content = {
        "name": session.get("name"),
        "message": data["data"]
    }
    send(content, to=room)
    rooms[room]["messages"].append(content)
    print(f"{session.get('name')} said: {data['data']}")

@socketio.on("connect")
def connect(auth):
    room = session.get("room")
    name = session.get("name")
    if not room or not name:
        return
    if room not in rooms:
        leave_room(room)
        return

    join_room(room)
    send({f"name": name, "message": f"'{name}'님이 입장하셨습니다."}, to=room)
    rooms[room]["members"].append(name)
    print(f"{name} joined room {room}")


    

@socketio.on("disconnect")
def disconnect():
    room = session.get("room")
    name = session.get("name")
    leave_room(room)

    if room in rooms:
        rooms[room]["members"].remove(name)
        if len(rooms[room]["members"]) <= 0:
            del rooms[room]

    send({"name": name, "message": f"'{name}'님이 퇴장하셨습니다."}, to=room)
    print(f"{name} has left the room {room}")




UPLOAD_FOLDER = 'static/uploads'
ALLOWED_EXTENSIONS = {'jpg', 'jpeg', 'png'}
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

MODEL_PATH = './IMGAI.h5'
emotion_img_model = tf.keras.models.load_model(MODEL_PATH)

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

    face_img = cv2.resize(face_img, (48, 48))
    face_img = face_img.reshape(1, 48, 48, 1) / 255.0

    predictions = emotion_img_model.predict(face_img)
    emotion_labels = ["불안", "분노", "중립", "기쁨", "슬픔"]
    result = {label:int(prediction * 100) for label, prediction in zip(emotion_labels, predictions[0])}

    return result


@app.route('/emotion')
def emotion():
    return render_template('emotion.html')

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
    socketio.run(app,host='0.0.0.0', port=8080)
