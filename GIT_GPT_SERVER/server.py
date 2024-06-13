from flask import Flask, jsonify, request
from dotenv import load_dotenv
import os
import requests

load_dotenv()

app = Flask(__name__)

log_path = 'GIT_GPT_SERVER/Logs/server_logs.json'
API_KEY = os.getenv('API_KEY')
API_URL = os.getenv('API_URL')

@app.route('/api/update_code/pull_logs', methods=['POST'])
def pull_logs():
    if not os.path.exists(log_path):
        with open(log_path, 'w', encoding='utf-8') as file:
            file.write('')
    try:
        with open(log_path, 'r', encoding='utf-8') as file:
            content = file.read()
    except UnicodeDecodeError:
        with open(log_path, 'rb') as file:
            content = file.read().decode('latin-1')
    return {"content": content}

@app.route('/api/update_code/pull_logs_summary', methods=['POST'])
def pull_logs_summary():
    logs_dir = 'Logs'
    logs_summary = []

    if os.path.exists(logs_dir):
        for log_file in os.listdir(logs_dir):
            log_path = os.path.join(logs_dir, log_file)
            if os.path.isfile(log_path):
                with open(log_path, 'r') as file:
                    lines = file.readlines()
                    summary = lines[:5]  # Get the first 5 lines as summary
                    logs_summary.append({
                        "filename": log_file,
                        "summary": ''.join(summary)
                    })
        return jsonify({"logs_summary": logs_summary})
    else:
        return jsonify({"error": "Logs directory not found"}), 404

@app.route('/api/generate_prompt', methods=['POST'])
def generate_prompt():
    data = request.json
    prompt = data.get('prompt', '')
    
    response = send_to_gpt(prompt)
    
    return jsonify(response)

def send_to_gpt(prompt):
    headers = {
        'Content-Type': 'application/json',
        'Authorization': f'Bearer {API_KEY}'
    }
    payload = {
        "model": "gpt-4",
        "messages": [{"role": "system", "content": "You are a helpful assistant."}, {"role": "user", "content": prompt}]
    }
    response = requests.post(API_URL, json=payload, headers=headers)
    return response.json()

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5001))
    debug_mode = os.environ.get('FLASK_DEBUG', 'false').lower() == 'true'
    app.run(debug=debug_mode, host='0.0.0.0', port=port)
