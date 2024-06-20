import json
import os
from dotenv import load_dotenv

# Load environment variables from .env
load_dotenv()

# Paths
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
CONFIG_FILE = os.path.join(BASE_DIR, 'config', 'config.json')

# Load JSON configuration
with open(CONFIG_FILE, 'r') as f:
    config = json.load(f)

# Configuration variables
PORT = config.get('PORT', 5000)
DEBUG_MODE = config.get('DEBUG_MODE', True)
CURRENT_GEN = "3"

# Sensitive information from .env
OPENAI_API_KEY = os.getenv('OPENAI_API_KEY')
GITHUB_TOKEN = os.getenv('GITHUB_TOKEN')
GITHUB_API_URL = os.getenv('GITHUB_API_URL')
ASSISTANT_ID = os.getenv('ASSISTANT_ID')
PINECONE_API_KEY = os.getenv('PINECONE_API_KEY')
PINECONE_INDEX_NAME = os.getenv('PINECONE_INDEX_NAME')
GITHUB_USERNAME = os.getenv('GITHUB_USERNAME')
