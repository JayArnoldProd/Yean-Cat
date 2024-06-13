# GIT_GPT_SERVER/routes/logs.py
import os
from flask import jsonify, Blueprint
from config import LOG_PATH
from utils.sanitize_logs import sanitize_log_content

logs_route = Blueprint('logs_route', __name__)

@logs_route.route('/api/update_code/pull_logs', methods=['POST'])
def pull_logs():
    log_dir = os.path.dirname(LOG_PATH)
    if not os.path.exists(log_dir):
        os.makedirs(log_dir)
        return jsonify({"error": "Logs directory does not exist. Directory created."}), 404
    if not os.path.exists(LOG_PATH):
        with open(LOG_PATH, 'w', encoding='utf-8') as file:
            file.write('')
        return jsonify({"error": "Log file does not exist. File created."}), 404
    try:
        with open(LOG_PATH, 'r', encoding='utf-8') as file:
            content = file.read()
            sanitized_content = sanitize_log_content(content)
    except UnicodeDecodeError:
        with open(LOG_PATH, 'rb') as file:
            content = file.read().decode('latin-1')
            sanitized_content = sanitize_log_content(content)
    return {"content": sanitized_content}

@logs_route.route('/api/update_code/pull_logs_summary', methods=['POST'])
def pull_logs_summary():
    logs_dir = 'GIT_GPT_SERVER/Logs'
    logs_summary = []

    if os.path.exists(logs_dir):
        for log_file in os.listdir(logs_dir):
            log_path = os.path.join(logs_dir, log_file)
            if os.path.isfile(log_path):
                with open(log_path, 'r') as file:
                    lines = file.readlines()
                    summary = lines[:5]  # Get the first 5 lines as summary
                    sanitized_summary = [sanitize_log_content(line) for line in summary]
                    logs_summary.append({
                        "filename": log_file,
                        "summary": ''.join(sanitized_summary)
                    })
        return jsonify({"logs_summary": logs_summary})
    else:
        return jsonify({"error": "Logs directory not found"}), 404
