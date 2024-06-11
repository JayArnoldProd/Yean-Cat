from flask import Flask, request, jsonify
from openai import OpenAI
from dotenv import load_dotenv
import os
import threading

load_dotenv()

app = Flask(__name__)
thread_lock = threading.Lock()
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

@app.route('/api/update_code/pull_logs', methods=['POST'])
def pull_logs():
    try:
        thread = client.beta.threads.create()
        client.beta.threads.messages.create(
            thread_id=thread.id,
            role="user",
            content="Pull logs from the server"
        )
        run = client.beta.threads.runs.create(
            thread_id=thread.id,
            assistant_id=os.getenv("ASSISTANT_ID")
        )
        messages = client.beta.threads.messages.list(thread_id=thread.id, order="asc")
        return jsonify(messages)
    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    debug_mode = os.environ.get('FLASK_DEBUG', 'false').lower() == 'true'
    app.run(debug=debug_mode, host='0.0.0.0', port=port)
