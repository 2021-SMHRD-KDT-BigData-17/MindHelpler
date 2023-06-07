from flask import Flask, render_template, request, redirect, url_for
import pandas as pd
from sentence_transformers import SentenceTransformer
from sklearn.metrics.pairwise import cosine_similarity
import json

app = Flask(__name__)


def load_model():
    model = SentenceTransformer('jhgan/ko-sroberta-multitask')
    return model


def load_dataset():
    df = pd.read_csv('wellness_dataset.csv')
    df['embedding'] = df['embedding'].apply(json.loads)
    return df


model = load_model()
df = load_dataset()


@app.route('/')
def home():
    return redirect(url_for('index'))


@app.route('/index')
def index():
    return render_template('index.html')


@app.route('/survey')
def survey():
    return render_template('survey.html')


@app.route('/emotion')
def emotion():
    return render_template('emotion.html')


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


@app.route('/chatbot', methods=['POST'])
def chatbot():
    user_input = request.form['user_input']
    if user_input:
        embedding = model.encode(user_input)

        df['distance'] = df['embedding'].map(
            lambda x: cosine_similarity([embedding], [x]).squeeze())
        answer = df.loc[df['distance'].idxmax()]

        return answer['챗봇']
    else:
        return "Error: Please provide a user input."


if __name__ == '__main__':
    app.run()