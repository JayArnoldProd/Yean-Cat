# config.py
from dotenv import load_dotenv
import os

load_dotenv()

GITHUB_API_URL = os.getenv('GITHUB_API_URL')
GITHUB_TOKEN = os.getenv('GITHUB_TOKEN')
ASSISTANT_ID = os.getenv('ASSISTANT_ID')
PINECONE_API_KEY = os.getenv('PINECONE_API_KEY')
PINECONE_INDEX_NAME = os.getenv('PINECONE_INDEX_NAME')
GITHUB_USERNAME = os.getenv('GITHUB_USERNAME')
PORT = int(os.getenv('PORT', 5000))
DEBUG_MODE = os.getenv('FLASK_DEBUG', 'false').lower() == 'true'
LOG_PATH = 'GIT_GPT_SERVER/Logs/server_logs.json'
