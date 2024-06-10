    import requests
    import os
    import time
    import random

    def query_openai(prompt, model='gpt-4', retries=3):
        for i in range(retries):
            try:
                response = requests.post(
                    'https://api.openai.com/v1/chat/completions',
                    headers={'Authorization': f'Bearer {os.getenv("OPENAI_API_KEY")}'},
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
    ```

- **utils/pinecone_operations.py**

    ```python
    import pinecone
    import os

    pinecone.init(api_key=os.getenv('PINECONE_API_KEY'))
    index_name = 'yean-cat-git-gpt-index'
    if index_name not in pinecone.list_indexes():
        pinecone.create_index(name=index_name, dimension=1536, metric='euclidean')
    index = pinecone.Index(index_name)

    def upsert_vectors_to_pinecone(prompt, response):
        vectors = [
            {"id": "prompt", "values": [float(x) for x in prompt], "metadata": {"type": "prompt"}},
            {"id": "response", "values": [float(x) for x in response], "metadata": {"type": "response"}}
        ]
        index.upsert(vectors=vectors)
    ```
