import os
import requests

OPENAI_API_KEY = os.getenv('OPENAI_API_KEY')

def query_openai(prompt, model='gpt-4', retries=3):
    for i in range(retries):
        try:
            response = requests.post(
                'https://api.openai.com/v1/chat/completions',
                headers={'Authorization': f'Bearer {OPENAI_API_KEY}'},
                json={
                    'model': model,
                    'messages': [{'role': 'user', 'content': prompt}],
                    'max_tokens': 1000,
                    'temperature': 0.5,
                }
            )
            response.raise_for_status()
            return response.json()
        except requests.exceptions.HTTPError as e:
            if response.status_code == 429:  # Too Many Requests
                retry_after = int(response.headers.get("Retry-After", 10))  # default to 10 seconds
                time.sleep(retry_after + random.uniform(0, 1))  # adding some jitter
            else:
                raise e
    raise Exception("Max retries exceeded")
