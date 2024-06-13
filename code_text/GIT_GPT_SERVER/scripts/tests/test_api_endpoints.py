import requests
import os

BASE_URL = "https://yean-cat-git-gpt-dd907a6ae83f.herokuapp.com"

def print_response(response):
    try:
        response.raise_for_status()  # Check if the request was successful
        print("Response JSON:", response.json())
    except requests.exceptions.HTTPError as http_err:
        print(f"HTTP error occurred: {http_err}")
        print("Response Content:", response.content)
    except requests.exceptions.JSONDecodeError:
        print("Response Content:", response.content)

def main():
    print("Starting Pinecone Initialization Test")
    response = requests.post(f"{BASE_URL}/api/query", json={
        "prompt_name": "test_prompt",
        "input_text": "Initialize Pinecone"
    })
    print("Pinecone Initialization Test:")
    print_response(response)

    print("Starting GPT Connection Test")
    response = requests.post(f"{BASE_URL}/api/generate_prompt", json={
        "save_name": "test_save",
        "input_text": "Test GPT connection"
    })
    print("GPT Connection Test:")
    print_response(response)

    print("Starting Update Code Test")
    response = requests.post(f"{BASE_URL}/api/update_code", json={
        "file_path": "test.py",
        "new_content": "print('Hello World')",
        "commit_message": "Test update"
    })
    print("Update Code Test:")
    print_response(response)

    print("Starting Assistant Test")
    response = requests.post(f"{BASE_URL}/api/assistant", json={
        "message": "Test assistant",
        "thread_id": "test_thread"
    }, headers={
        "Authorization": f"Bearer {os.getenv('ASSISTANT_API_KEY')}"
    })
    print("Assistant Test:")
    print_response(response)

    print("Starting Pull Logs Test")
    response = requests.post(f"{BASE_URL}/api/update_code/pull_logs")
    print("Pull Logs Test:")
    print_response(response)

if __name__ == "__main__":
    main()