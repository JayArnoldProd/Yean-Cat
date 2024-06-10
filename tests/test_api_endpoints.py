# tests/test_api_endpoints.py
import requests
import os

BASE_URL = "https://yean-cat-git-gpt-dd907a6ae83f.herokuapp.com"

# Function to print response content
def print_response(response):
    try:
        print("Response JSON:", response.json())
    except requests.exceptions.JSONDecodeError:
        print("Response Content:", response.content)

# Pinecone Initialization Test
response = requests.post(f"{BASE_URL}/api/query", json={
    "prompt_name": "test_prompt",
    "input_text": "Initialize Pinecone"
})
print("Pinecone Initialization Test:")
print_response(response)

# GPT Connection Test
response = requests.post(f"{BASE_URL}/api/generate_prompt", json={
    "save_name": "test_save",
    "input_text": "Test GPT connection"
})
print("GPT Connection Test:")
print_response(response)

# Update Code Test
response = requests.post(f"{BASE_URL}/api/update_code", json={
    "save_name": "test_save",
    "code_changes": [
        {
            "file_path": "test.py",
            "changes": "print('Hello World')"
        }
    ]
})
print("Update Code Test:")
print_response(response)

# Assistant Test
response = requests.post(f"{BASE_URL}/api/assistant", json={
    "query": "Test assistant",
    "context": "Testing the assistant endpoint."
}, headers={
    "Authorization": f"Bearer {os.getenv('ASSISTANT_API_KEY')}"
})
print("Assistant Test:")
print_response(response)