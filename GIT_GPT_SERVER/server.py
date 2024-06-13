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

# Registering blueprints with additional logging
try:
    app.register_blueprint(update_code_route)
    print("update_code_route registered successfully.")
except Exception as e:
    print(f"Failed to register update_code_route: {e}")

try:
    app.register_blueprint(query_openai_route)
    print("query_openai_route registered successfully.")
except Exception as e:
    print(f"Failed to register query_openai_route: {e}")

try:
    app.register_blueprint(generate_prompt_route)
    print("generate_prompt_route registered successfully.")
except Exception as e:
    print(f"Failed to register generate_prompt_route: {e}")

try:
    app.register_blueprint(assistant_route)
    print("assistant_route registered successfully.")
except Exception as e:
    print(f"Failed to register assistant_route: {e}")

log_path = 'GIT_GPT_SERVER/Logs/server_logs.json'

@app.route('/')
def home():
    return jsonify({"message": "Welcome to the Yean Cat GPT API!"})

@app.route('/api/update_code/pull_logs', methods=['POST'])
def pull_logs():
    if not os.path.exists(os.path.dirname(log_path)):
        os.makedirs(os.path.dirname(log_path))
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
    logs_dir = 'GIT_GPT_SERVER/Logs'
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

@app.route('/api/update_code', methods=['POST'])
def update_code():
    data = request.get_json()
    if not data or 'key' not in data:
        return jsonify({"error": "Missing required fields"}), 400
    # Process the update code logic here
    return jsonify({"message": "Update code received"})

@app.route('/query', methods=['POST'])
def query():
    # Your query logic here
    return jsonify({"message": "Query received"})

# Add a debug route to check if the app is running
@app.route('/debug', methods=['GET'])
def debug():
    return jsonify({"status": "Server is running", "routes": [str(rule) for rule in app.url_map.iter_rules()]})

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    debug_mode = os.environ.get('FLASK_DEBUG', 'false').lower() == 'true'
    app.run(debug=debug_mode, host='0.0.0.0', port=port)
