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

def read_file(file_path):
    try:
        with open(file_path, 'r') as file:
            return file.read()
    except FileNotFoundError:
        return None

@app.route('/api/generate_prompt', methods=['POST'])
def generate_prompt():
    data = request.get_json()
    prompt_type = data.get('type')
    name = data.get('name')
    additional_instructions = data.get('additional_instructions')

    if not prompt_type or not name:
        return jsonify({"error": "Missing required fields"}), 400

    intro = read_file('Intro.txt')
    format_description = read_file('format_description.txt')
    
    if not intro or not format_description:
        return jsonify({"error": "Intro or format description files not found"}), 500

    # Load the appropriate list based on the prompt type
    if prompt_type == 'bug':
        items = read_file('bug_list.json')
    elif prompt_type == 'feature':
        items = read_file('planned_features.json')
    else:
        return jsonify({"error": "Invalid prompt type"}), 400

    if not items:
        return jsonify({"error": f"{prompt_type}_list.json not found"}), 500

    items = json.loads(items)
    item = next((i for i in items if i['name'] == name), None)

    if not item:
        return jsonify({"error": f"{prompt_type} with name {name} not found"}), 404

    # Build the prompt
    prompt = f"{intro}\n\n{format_description}\n\nI need help with a {prompt_type}:\n\n"
    prompt += f"Description: {item['description']}\n\n"
    prompt += "Related objects:\n" + "\n".join(item['related_objects']) + "\n\n"
    prompt += "Related scripts:\n" + "\n".join(item['related_scripts']) + "\n\n"

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

    prompt += "Logs:\n" + "\n".join(item['logs']) + "\n\n"

    if additional_instructions:
        prompt += f"Additional instructions:\n{additional_instructions}\n\n"

    return jsonify({"prompt": prompt})

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(debug=True, host='0.0.0.0', port=port)
