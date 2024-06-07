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

def read_file(file_path):
    try:
        with open(file_path, 'r') as file:
            return file.read()
    except FileNotFoundError:
        return None

@app.route('/')
def home():
    return "Hello, this is the home page of Yean-Cat!"

@app.route('/api/query', methods=['POST'])
def query_openai():
    data = request.get_json()
    prompt = data.get('prompt') if data else None
    if not prompt:
        return jsonify({"error": "Invalid input, 'prompt' field is required"}), 400

    try:
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
        response.raise_for_status()
        return jsonify(response.json())
    except requests.exceptions.RequestException as e:
        return jsonify({"error": str(e)}), 500

@app.route('/api/generate_prompt', methods=['POST'])
def generate_prompt():
    data = request.get_json()
    prompt_type = data.get('type')
    prompt_name = data.get('name')
    additional_instructions = data.get('additional_instructions', '')

    intro = read_file('intro.txt')
    format_description = read_file('format_description.txt')

    if not intro or not format_description:
        return jsonify({"error": "Intro or format description files not found"}), 400

    if prompt_type == 'bug':
        with open('bug_list.json', 'r') as f:
            bug_list = json.load(f)
        bug = next((bug for bug in bug_list if bug['name'] == prompt_name), None)
        if not bug:
            return jsonify({"error": "Bug not found"}), 400

        prompt = f"{intro}\n\n{bug['description']}\n\n{format_description}\n\nAdditional Instructions: {additional_instructions}\n\nLogs:\n{''.join([read_file(f'Logs/{log}') for log in bug['logs']])}"

    elif prompt_type == 'feature':
        with open('planned_features.json', 'r') as f:
            feature_list = json.load(f)
        feature = next((feature for feature in feature_list if feature['name'] == prompt_name), None)
        if not feature:
            return jsonify({"error": "Feature not found"}), 400

        prompt = f"{intro}\n\n{feature['description']}\n\n{format_description}\n\nAdditional Instructions: {additional_instructions}\n\nLogs:\n{''.join([read_file(f'Logs/{log}') for log in feature['logs']])}"

    else:
        return jsonify({"error": "Invalid prompt type"}), 400

    return jsonify({"prompt": prompt})

@app.route('/api/update_code', methods=['POST'])
def update_code():
    data = request.get_json()
    file_path = data.get('file_path')
    new_content = data.get('new_content')
    commit_message = data.get('commit_message')

    if not file_path or not new_content or not commit_message:
        return jsonify({"error": "Missing required fields"}), 400

    headers = {
        'Authorization': f'token {GITHUB_TOKEN}',
        'Accept': 'application/vnd.github.v3+json',
    }
    try:
        get_file_response = requests.get(f'{GITHUB_API_URL}/contents/{file_path}', headers=headers)
        get_file_response.raise_for_status()
        file_sha = get_file_response.json().get('sha')

        update_data = {
            'message': commit_message,
            'content': new_content,
            'sha': file_sha,
        }
        update_response = requests.put(f'{GITHUB_API_URL}/contents/{file_path}', headers=headers, json=update_data)
        update_response.raise_for_status()
        return jsonify(update_response.json())
    except requests.exceptions.RequestException as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(debug=True, host='0.0.0.0', port=port)
