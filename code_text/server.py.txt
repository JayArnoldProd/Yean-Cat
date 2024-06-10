from flask import Flask, request, jsonify
from dotenv import load_dotenv
import os
import threading
from routes.query import query_openai_route
from routes.generate_prompt import generate_prompt_route
from routes.update_code import update_code_route
from routes.assistant import assistant_route

load_dotenv()

app = Flask(__name__)

app.add_url_rule('/', 'home', lambda: "Hello, this is the home page of Yean-Cat!")
app.add_url_rule('/api/query', 'query_openai_route', query_openai_route, methods=['POST'])
app.add_url_rule('/api/generate_prompt', 'generate_prompt_route', generate_prompt_route, methods=['POST'])
app.add_url_rule('/api/update_code', 'update_code_route', update_code_route, methods=['POST'])
app.add_url_rule('/api/assistant', 'assistant_route', assistant_route, methods=['POST'])

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(debug=True, host='0.0.0.0', port=port)
