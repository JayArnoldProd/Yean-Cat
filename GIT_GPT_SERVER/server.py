from flask import Flask, jsonify, request
from dotenv import load_dotenv
import os

load_dotenv()

app = Flask(__name__)

@app.route('/api/update_code/pull_logs', methods=['POST'])
def pull_logs():
    log_path = 'GIT_GPT_SERVER/Logs/server_logs.json'
    if not os.path.exists(log_path):
        with open(log_path, 'w') as file:
            file.write('{}')  # Initialize with an empty JSON object
    try:
        with open(log_path, 'r', encoding='utf-8') as file:
            content = file.read()
    except UnicodeDecodeError:
        with open(log_path, 'rb') as file:
            content = file.read().decode('latin-1')
    return jsonify({"content": content})

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

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5001))
    debug_mode = os.environ.get('FLASK_DEBUG', 'false').lower() == 'true'
    app.run(debug=debug_mode, host='0.0.0.0', port=port)
