from flask import Flask
from dotenv import load_dotenv
import os
import threading
from routes.query import query_openai_route
from routes.assistant import assistant_route
from routes.generate_prompt import generate_prompt_route
from routes.update_code import update_code_route

# Initialize the thread lock
thread_lock = threading.Lock()

# Load environment variables from a .env file
load_dotenv()

# Create a Flask application instance
app = Flask(__name__)

# Define a simple route for the home page
@app.route('/')
def home():
    return "Hello, this is the home page of Yean-Cat!"

# Register blueprints for different routes
app.register_blueprint(query_openai_route, url_prefix='/api')
app.register_blueprint(generate_prompt_route, url_prefix='/api')
app.register_blueprint(update_code_route, url_prefix='/api')
app.register_blueprint(assistant_route, url_prefix='/api')

# Main entry point for the application
if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    debug_mode = os.environ.get('FLASK_DEBUG', 'false').lower() == 'true'
    app.run(debug=debug_mode, host='0.0.0.0', port=port)
