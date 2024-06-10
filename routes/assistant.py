from flask import Blueprint, jsonify

assistant_route = Blueprint('assistant_route', __name__)

thread_lock = threading.Lock()
user_threads = {}

@assistant_route.route('/assistant', methods=['POST'])
def assistant():
    data = request.get_json()
    message = data.get('message')
    thread_id = data.get('thread_id', 'default')
    if not message:
        return jsonify({"error": "Invalid input, 'message' field is required"}), 400

    with thread_lock:
        if thread_id not in user_threads:
            user_threads[thread_id] = []

    try:
        response = requests.post(
            'https://api.openai.com/v1/assistants',
            headers={'Authorization': f'Bearer {os.getenv("ASSISTANT_API_KEY")}'},
            json={
                'message': message,
                'thread_id': thread_id,
                'context': user_threads[thread_id]
            }
        )
        response.raise_for_status()
        assistant_response = response.json()
        
        with thread_lock:
            user_threads[thread_id].append({"role": "assistant", "content": assistant_response['message']})

        return jsonify(assistant_response)
    except requests.exceptions.RequestException as e:
        return jsonify({"error": str(e)}), 500
