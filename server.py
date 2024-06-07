from flask import Flask, request, jsonify
import requests
import os
import json
from dotenv import load_dotenv

load_dotenv()

app = Flask(__name__)

OPENAI_API_KEY = os.getenv('OPENAI_API_KEY')
GITHUB_TOKEN = os.getenv('GITHUB_TOKEN')
GITHUB_REPO = 'JayArnoldProd/Yean-Cat'
GITHUB_API_URL = f'https://api.github.com/repos/{GITHUB_REPO}'

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

@app.route('/api/generate_prompt', methods=['POST'])
def generate_prompt():
    data = request.get_json()
    prompt_type = data.get('type')
    name = data.get('name')
    additional_instructions = data.get('additional_instructions', '')

    intro = read_file('Intro.txt')
    format_description = read_file('format_description.txt')
    logs = []

    if prompt_type == 'bug':
        item = find_item_in_json('bug_list.json', name)
        if item:
            logs = item.get('logs', [])
    elif prompt_type == 'feature':
        item = find_item_in_json('planned_features.json', name)
        if item:
            logs = item.get('logs', [])

    if not item:
        return jsonify({"error": f"{prompt_type.capitalize()} named '{name}' not found"}), 404

    relevant_code = get_relevant_code(item)
    client_logs = get_client_logs(logs)

    prompt = f"{intro}\n\n{format_description}\n\nI need help with {prompt_type}:\n\n{item['description']}\n\nHere is the relevant code:\n\n{relevant_code}\n\nClient logs:\n\n{client_logs}\n\n{additional_instructions}"

    return jsonify({"prompt": prompt})

def read_file(file_path):
    with open(file_path, 'r') as file:
        return file.read()

def find_item_in_json(json_file, name):
    with open(json_file, 'r') as file:
        items = json.load(file)
        for item in items:
            if item['name'].lower() == name.lower():
                return item
    return None

def get_relevant_code(item):
    code = ""
    for script in item.get('related_scripts', []):
        code += f"\n\n{script}.gml:\n" + read_file(f"YEAN CAT/scripts/{script}.gml")
    for obj in item.get('related_objects', []):
        for event_file in os.listdir(f"YEAN CAT/objects/{obj}"):
            if event_file.endswith('.gml'):
                code += f"\n\n{obj}/{event_file}:\n" + read_file(f"YEAN CAT/objects/{obj}/{event_file}")
    return code

def get_client_logs(logs):
    log_content = ""
    for log in logs:
        log_content += f"\n\n{log}:\n" + read_file(f"Logs/{log}")
    return log_content

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(debug=True, host='0.0.0.0', port=port)
