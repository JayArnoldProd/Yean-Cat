# config.py
from dotenv import load_dotenv
import os

load_dotenv()

PORT = int(os.getenv('PORT', 5000))  # Default to port 5000 if not set
DEBUG_MODE = os.getenv('DEBUG_MODE', 'True').lower() in ['true', '1', 't']

# API keys and other configuration
OPENAI_API_KEY = os.getenv('OPENAI_API_KEY')
GITHUB_TOKEN = os.getenv('GITHUB_TOKEN')
GITHUB_API_URL = os.getenv('GITHUB_API_URL')
ASSISTANT_ID = os.getenv('ASSISTANT_ID')
PINECONE_API_KEY = os.getenv('PINECONE_API_KEY')
PINECONE_INDEX_NAME = os.getenv('PINECONE_INDEX_NAME')
GITHUB_USERNAME = os.getenv('GITHUB_USERNAME')
