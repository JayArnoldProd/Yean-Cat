import requests

# Replace with your actual Heroku app URL
HEROKU_APP_URL = 'https://yean-cat-git-gpt-dd907a6ae83f.herokuapp.com'

def test_pinecone_initialization():
    url = f'{HEROKU_APP_URL}/api/query'
    payload = {"query": "Test initialization"}
    response = requests.post(url, json=payload)
    print("Pinecone Initialization Test Response:", response.json())

def test_gpt_connection():
    url = f'{HEROKU_APP_URL}/api/generate_prompt'
    payload = {"prompt": "Hello, how are you?"}
    response = requests.post(url, json=payload)
    print("GPT Connection Test Response:", response.json())

def test_update_code():
    url = f'{HEROKU_APP_URL}/api/update_code'
    payload = {"code": "print('Hello, World!')"}
    response = requests.post(url, json=payload)
    print("Update Code Test Response:", response.json())

def test_assistant():
    url = f'{HEROKU_APP_URL}/api/assistant'
    payload = {"message": "Can you help me with my code?"}
    response = requests.post(url, json=payload)
    print("Assistant Test Response:", response.json())

if __name__ == '__main__':
    test_pinecone_initialization()
    test_gpt_connection()
    test_update_code()
    test_assistant()
