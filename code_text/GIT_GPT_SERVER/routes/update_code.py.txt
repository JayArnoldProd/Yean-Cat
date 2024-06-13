from flask import Blueprint, jsonify, request
import os
import requests

update_code_route = Blueprint('update_code_route', __name__)

@update_code_route.route('/api/update_code', methods=['POST'])
def update_code():
    data = request.get_json()
    file_path = data.get('file_path')
    new_content = data.get('new_content')
    commit_message = data.get('commit_message')

    if not file_path or not new_content or not commit_message:
        return jsonify({"error": "Missing required fields"}), 400

    GITHUB_API_URL = os.getenv('GITHUB_API_URL')
    GITHUB_TOKEN = os.getenv('GITHUB_TOKEN')

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
            'content': new_content.encode('utf-8').decode('ascii'),
            'sha': file_sha,
        }
        update_response = requests.put(f'{GITHUB_API_URL}/contents/{file_path}', headers=headers, json=update_data)
        update_response.raise_for_status()
        return jsonify(update_response.json())
    except requests.exceptions.RequestException as e:
        return jsonify({"error": str(e)}), 500

@update_code_route.route('/api/update_code/pull_logs', methods=['POST'])
def pull_logs():
    logs_dir = 'Logs'
    logs = {}

    if not os.path.exists(logs_dir):
        return jsonify({"error": "Logs directory does not exist."}), 404

    for log_file in os.listdir(logs_dir):
        if log_file.endswith('.txt'):
            try:
                with open(os.path.join(logs_dir, log_file), 'r') as file:
                    logs[log_file] = file.read()
            except FileNotFoundError:
                logs[log_file] = "Log file not found."
            except Exception as e:
                logs[log_file] = str(e)

    return jsonify(logs)

@update_code_route.route('/api/update_code/pull_logs_summary', methods=['POST'])
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
