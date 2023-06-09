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
    return redirect(url_for('Main'))


@app.route('/Main')
def index():
    return render_template('Main')


@app.route('/survey')
def survey():
    return render_template('survey')


@app.route('/emotion')
def emotion():
    return render_template('emotion')


@app.route('/emotionDiary')
def emotionDiary():
    return render_template('emotionDiary')


@app.route('/userprofile')
def userprofile():
    return render_template('userprofile')


@app.route('/counselorFile')
def counselorFile():
    return render_template('counselorFile')


@app.route('/loginCounselor')
def loginCounselor():
    return render_template('loginCounselor')


@app.route('/login')
def login():
    return render_template('login')


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
