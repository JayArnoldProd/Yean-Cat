from flask import Flask, request, jsonify
import requests
import os
import json
from dotenv import load_dotenv
from pinecone import Pinecone, ServerlessSpec
import threading
import time
import random

load_dotenv()

app = Flask(__name__)

OPENAI_API_KEY = os.getenv('OPENAI_API_KEY')
GITHUB_TOKEN = os.getenv('GITHUB_TOKEN')
ASSISTANT_API_KEY = os.getenv('ASSISTANT_API_KEY')
PINECONE_API_KEY = os.getenv('PINECONE_API_KEY')
GITHUB_REPO = 'JayArnoldProd/Yean-Cat'
GITHUB_API_URL = f'https://api.github.com/repos/{GITHUB_REPO}'

# Initialize Pinecone with a valid index name
pc = Pinecone(api_key=PINECONE_API_KEY)

# Ensure index name is valid
index_name = 'yean-cat-git-gpt-index'  # Change to a name that suits you, complying with naming rules

if index_name not in pc.list_indexes().names():
    pc.create_index(
        name=index_name,
        dimension=1536,
        metric='euclidean',
        spec=ServerlessSpec(cloud='aws', region='us-east-1')
    )

thread_lock = threading.Lock()
user_threads = {}

def read_file(file_path):
    try:
        with open(file_path, 'r') as file:
            return file.read()
    except FileNotFoundError:
        return None

def write_file(file_path, content):
    os.makedirs(os.path.dirname(file_path), exist_ok=True)
    with open(file_path, 'w') as file:
        file.write(content)

def query_openai(prompt, model='gpt-4', retries=3):
    for i in range(retries):
        try:
            response = requests.post(
                'https://api.openai.com/v1/chat/completions',
                headers={'Authorization': f'Bearer {OPENAI_API_KEY}'},
                json={
                    'model': model,
                    'messages': [{'role': 'user', 'content': prompt}],
                    'max_tokens': 1000,
                    'temperature': 0.5,
                }
            )
            response.raise_for_status()
            return response.json()
        except requests.exceptions.HTTPError as e:
            if response.status_code == 429:  # Too Many Requests
                retry_after = int(response.headers.get("Retry-After", 10))  # default to 10 seconds
                time.sleep(retry_after + random.uniform(0, 1))  # adding some jitter
            else:
                raise e
    raise Exception("Max retries exceeded")

@app.route('/')
def home():
    return "Hello, this is the home page of Yean-Cat!"

@app.route('/api/query', methods=['POST'])
def query_openai_route():
    data = request.get_json()
    prompt_name = data.get('prompt_name')
    model = data.get('model', 'gpt-4')
    thread_id = data.get('thread_id')
    if not prompt_name:
        return jsonify({"error": "Invalid input, 'prompt_name' field is required"}), 400
    
    prompt = read_file(f'prompts/{prompt_name}.txt')
    if not prompt:
        return jsonify({"error": f"Prompt file '{prompt_name}.txt' not found"}), 400

    try:
        response = query_openai(prompt, model)
        if thread_id:
            with thread_lock:
                if thread_id not in user_threads:
                    user_threads[thread_id] = []
                user_threads[thread_id].append(response)
        return jsonify(response)
    except requests.exceptions.RequestException as e:
        return jsonify({"error": str(e)}), 500

@app.route('/api/generate_prompt', methods=['POST'])
def generate_prompt():
    data = request.get_json()
    prompt_type = data.get('type')
    item_name = data.get('name')
    save_name = data.get('save_name')
    additional_instructions = data.get('additional_instructions', '')

    if not save_name:
        return jsonify({"error": "Invalid input, 'save_name' field is required"}), 400

    intro = read_file('intro.txt')
    format_description = read_file('format_description.txt')

    if not intro or not format_description:
        return jsonify({"error": "Intro or format description files not found"}), 400

    try:
        if prompt_type == 'bug':
            with open('bug_list.json', 'r') as f:
                bug_list = json.load(f)
            item = next((bug for bug in bug_list if bug['name'] == item_name), None)
            if not item:
                return jsonify({"error": "Bug not found"}), 400

        elif prompt_type == 'feature':
            with open('planned_features.json', 'r') as f:
                feature_list = json.load(f)
            item = next((feature for feature in feature_list if feature['name'] == item_name), None)
            if not item:
                return jsonify({"error": "Feature not found"}), 400

        else:
            return jsonify({"error": "Invalid prompt type"}), 400
    except json.JSONDecodeError as e:
        return jsonify({"error": f"JSON Decode Error: {e}"}), 500

    prompt = f"{intro}\n\n{item['description']}\n\n{format_description}\n\nAdditional Instructions: {additional_instructions}\n\n"

    for script in item['related_scripts']:
        script_path = f"YEAN CAT/scripts/{script}/{script}.gml"
        script_content = read_file(script_path)
        if script_content:
            prompt += f"Script {script}:\n{script_content}\n\n"

    for obj in item['related_objects']:
        obj_path = f"YEAN CAT/objects/{obj}/"
        if os.path.isdir(obj_path):
            for filename in os.listdir(obj_path):
                if filename.endswith('.gml'):
                    file_content = read_file(os.path.join(obj_path, filename))
                    if file_content:
                        prompt += f"Object {obj} ({filename}):\n{file_content}\n\n"

    log_contents = []
    for log in item['logs']:
        log_content = read_file(f'Logs/{log}')
        if log_content:
            log_contents.append(log_content)
    prompt += "Logs:\n" + "\n".join(log_contents) + "\n\n"

    prompt_file_path = f'prompts/{save_name}.txt'
    write_file(prompt_file_path, prompt)

    return jsonify({"message": f"Prompt saved as '{prompt_file_path}'"})

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

@app.route('/api/assistant', methods=['POST'])
def assistant_api_route():
    data = request.get_json()
    message = data.get('message')
    thread_id = data.get('thread_id', 'default')
    
    if not message:
        return jsonify({"error": "Invalid input, 'message' field is required"}), 400

    with thread_lock:
        if thread_id not in user_threads:
            user_threads[thread_id] = []

    try:
        response = requests.post(
            'https://api.openai.com/v1/assistants',
            headers={'Authorization': f'Bearer {ASSISTANT_API_KEY}'},
            json={
                'message': message,
                'thread_id': thread_id,
                'context': user_threads[thread_id]
            }
        )
        response.raise_for_status()
        assistant_response = response.json()
        
        with thread_lock:
            user_threads[thread_id].append({"role": "assistant", "content": assistant_response['message']})

        return jsonify(assistant_response)
    except requests.exceptions.RequestException as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(debug=True, host='0.0.0.0', port=port)
