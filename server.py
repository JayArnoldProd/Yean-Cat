from flask import Flask, request, jsonify
import requests
import os
from dotenv import load_dotenv

load_dotenv()

app = Flask(__name__)

OPENAI_API_KEY = os.getenv('OPENAI_API_KEY')
GITHUB_TOKEN = os.getenv('GITHUB_TOKEN')
GITHUB_REPO = 'JayArnoldProd/Yean-Cat'
GITHUB_API_URL = f'https://api.github.com/repos/{GITHUB_REPO}'

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

@app.route('/api/update_code', methods=['POST'])
def update_code():
    file_path = request.json.get('file_path')
    new_content = request.json.get('new_content')
    commit_message = request.json.get('commit_message')

    headers = {
        'Authorization': f'token {GITHUB_TOKEN}',
        'Accept': 'application/vnd.github.v3+json',
    }
    get_file_response = requests.get(f'{GITHUB_API_URL}/contents/{file_path}', headers=headers)
    file_sha = get_file_response.json().get('sha')

    update_data = {
        'message': commit_message,
        'content': new_content,
        'sha': file_sha,
    }
    update_response = requests.put(f'{GITHUB_API_URL}/contents/{file_path}', headers=headers, json=update_data)
    return jsonify(update_response.json())

if __name__ == '__main__':
    app.run(debug=True)
