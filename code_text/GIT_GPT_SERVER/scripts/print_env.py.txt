# print_env.py
from dotenv import load_dotenv
import os

load_dotenv()

print("GITHUB_API_URL:", os.getenv('GITHUB_API_URL'))
print("GITHUB_TOKEN:", os.getenv('GITHUB_TOKEN'))
print("ASSISTANT_ID:", os.getenv('ASSISTANT_ID'))  # Ensure this is correctly named in Heroku
print("PINECONE_API_KEY:", os.getenv('PINECONE_API_KEY'))
print("PINECONE_INDEX_NAME:", os.getenv('PINECONE_INDEX_NAME'))
print("GITHUB_USERNAME:", os.getenv('GITHUB_USERNAME'))
