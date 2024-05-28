from flask import Flask, request, jsonify
import requests

app = Flask(__name__)

OPENAI_API_KEY = 'sk-proj-jglIsHNp5YgJRSD5ngouT3BlbkFJCrqJFsjaKgSOp7kfe3vz'

@app.route('/api/query', methods=['POST'])
def query_openai():
    prompt = request.json.get('prompt')
    response = requests.post(
        'https://api.openai.com/v1/chat/completions',
        headers={'Authorization': f'Bearer {OPENAI_API_KEY}'},
        json={
            'model': 'gpt-3.5-turbo',
            'messages': [{'role': 'user', 'content': prompt}],
            'max_tokens': 150,
            'temperature': 0.5,
        }
    )
    return jsonify(response.json())

if __name__ == '__main__':
    app.run(debug=True)