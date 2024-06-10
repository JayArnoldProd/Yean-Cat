from flask import Flask
from dotenv import load_dotenv
import os
from routes.query import query_openai_route
from routes.generate_prompt import generate_prompt_route
from routes.update_code import update_code_route
from routes.assistant import assistant_route

load_dotenv()

app = Flask(__name__)

app.add_url_rule('/', 'home', lambda: "Hello, this is the home page of Yean-Cat!")
app.register_blueprint(query_openai_route, url_prefix='/api')
app.register_blueprint(generate_prompt_route, url_prefix='/api')
app.register_blueprint(update_code_route, url_prefix='/api')
app.register_blueprint(assistant_route, url_prefix='/api')

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(debug=True, host='0.0.0.0', port=port)
