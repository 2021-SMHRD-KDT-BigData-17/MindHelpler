from flask import Flask, render_template, request
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
    return render_template('emotionDiary.html')


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
