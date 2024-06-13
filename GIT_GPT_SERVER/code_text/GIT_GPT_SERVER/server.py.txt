from flask import Flask, jsonify
import sys
import os
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

# Add the utils directory to the sys.path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'utils'))

# Ensure environment variables are set for PORT and DEBUG_MODE
try:
    from config import PORT, DEBUG_MODE
except ImportError:
    PORT = 5000
    DEBUG_MODE = True

# Importing blueprints
from routes.update_code import update_code_route
from routes.query_openai import query_openai_route
from routes.generate_prompt import generate_prompt_route
from routes.assistant import assistant_route
from routes.logs import logs_route

app = Flask(__name__)

# Registering blueprints
app.register_blueprint(update_code_route)
app.register_blueprint(query_openai_route)
app.register_blueprint(generate_prompt_route)
app.register_blueprint(assistant_route)
app.register_blueprint(logs_route)

@app.route('/')
def home():
    return jsonify({"message": "Welcome to the Yean Cat GPT API!"})

# Add a debug route to check if the app is running
@app.route('/debug', methods=['GET'])
def debug():
    return jsonify({"status": "Server is running", "routes": [str(rule) for rule in app.url_map.iter_rules()]})

if __name__ == '__main__':
    app.run(debug=DEBUG_MODE, host='0.0.0.0', port=PORT)
