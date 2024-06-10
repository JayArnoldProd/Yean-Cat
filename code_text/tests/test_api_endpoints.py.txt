import requests
import os

BASE_URL = "https://yean-cat-git-gpt-dd907a6ae83f.herokuapp.com"

# Pinecone Initialization Test
response = requests.post(f"{BASE_URL}/api/query", json={
    "prompt_name": "test_prompt",
    "input_text": "Initialize Pinecone"
})
print("Pinecone Initialization Test Response Content:", response.content)

# GPT Connection Test
response = requests.post(f"{BASE_URL}/api/generate_prompt", json={
    "save_name": "test_save",
    "input_text": "Test GPT connection"
})
print("GPT Connection Test Response Content:", response.content)

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
print("Update Code Test Response Content:", response.content)

# Assistant Test
response = requests.post(f"{BASE_URL}/api/assistant", json={
    "query": "Test assistant",
    "context": "Testing the assistant endpoint."
}, headers={
    "Authorization": f"Bearer {os.getenv('ASSISTANT_API_KEY')}"
})
print("Assistant Test Response Content:", response.content)
