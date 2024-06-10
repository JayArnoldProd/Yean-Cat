from flask import request, jsonify
from utils.openai_operations import query_openai
from utils.pinecone_operations import init_pinecone_index, upsert_vectors_to_pinecone

index = init_pinecone_index()

def query_openai_route():
    data = request.get_json()
    prompt_name = data.get('prompt_name')
    model = data.get('model', 'gpt-4')
    thread_id = data.get('thread_id')
    if not prompt_name:
        return jsonify({"error": "Invalid input, 'prompt_name' field is required"}), 400
    
    prompt = read_file(f'prompts/{prompt_name}.txt')
    if not prompt:
        return jsonify({"error": f"Prompt file '{prompt_name}.txt' not found"}), 400

    try:
        response = query_openai(prompt, model)
        if thread_id:
            with thread_lock:
                if thread_id not in user_threads:
                    user_threads[thread_id] = []
                user_threads[thread_id].append(response)
        # Upsert vectors to Pinecone
        vectors = [
            {"id": "prompt", "values": [float(x) for x in prompt], "metadata": {"type": "prompt"}},
            {"id": "response", "values": [float(x) for x in response], "metadata": {"type": "response"}}
        ]
        upsert_vectors_to_pinecone(index, vectors)
        return jsonify(response)
    except requests.exceptions.RequestException as e:
        return jsonify({"error": str(e)}), 500
