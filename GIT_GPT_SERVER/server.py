from flask import Flask, jsonify, request
from dotenv import load_dotenv
import os
import sys

# Add the utils directory to the sys.path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'utils'))

from GIT_GPT_SERVER.routes.update_code import update_code_route
from GIT_GPT_SERVER.routes.query import query_openai_route
from GIT_GPT_SERVER.routes.generate_prompt import generate_prompt_route
from GIT_GPT_SERVER.routes.assistant import assistant_route

load_dotenv()

# Debugging environment variables
print("GITHUB_API_URL:", os.getenv('GITHUB_API_URL'))
print("GITHUB_TOKEN:", os.getenv('GITHUB_TOKEN'))
print("ASSISTANT_ID:", os.getenv('ASSISTANT_ID'))
print("PINECONE_API_KEY:", os.getenv('PINECONE_API_KEY'))
print("PINECONE_INDEX_NAME:", os.getenv('PINECONE_INDEX_NAME'))
print("GITHUB_USERNAME:", os.getenv('GITHUB_USERNAME'))

app = Flask(__name__)
app.register_blueprint(update_code_route)
app.register_blueprint(query_openai_route)
app.register_blueprint(generate_prompt_route)
app.register_blueprint(assistant_route)

log_path = 'GIT_GPT_SERVER/Logs/server_logs.json'

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

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    debug_mode = os.environ.get('FLASK_DEBUG', 'false').lower() == 'true'
    app.run(debug=debug_mode, host='0.0.0.0', port=port)
