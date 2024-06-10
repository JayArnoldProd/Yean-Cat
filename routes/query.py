from flask import Blueprint, jsonify, request
from utils.pinecone_operations import init_pinecone_index, upsert_vectors_to_pinecone
import os

query_openai_route = Blueprint('query_openai_route', __name__)

index_name = "yean-cat-git-gpt-index"  # Use the correct index name
index = init_pinecone_index(index_name)

@query_openai_route.route('/query', methods=['POST'])
def query_openai():
    # Your endpoint logic here
    return jsonify({"message": "Pinecone index queried successfully"})

@query_openai_route.route('/api/generate_prompt', methods=['POST'])
def generate_prompt():
    # Your endpoint logic here
    return jsonify({"message": "GPT prompt generated successfully"})

@query_openai_route.route('/api/update_code', methods=['POST'])
def update_code():
    # Your endpoint logic here
    return jsonify({"message": "Code updated successfully"})

@query_openai_route.route('/api/assistant', methods=['POST'])
def assistant():
    # Your endpoint logic here
    return jsonify({"message": "Assistant query successful"})

# Add this route if you want to use the upsert_vectors_to_pinecone function
@query_openai_route.route('/api/upsert_vectors', methods=['POST'])
def upsert_vectors():
    data = request.get_json()
    vectors = data.get('vectors', [])  # Ensure the vectors are in the correct format
    if vectors:
        upsert_vectors_to_pinecone(vectors)
        return jsonify({"message": "Vectors upserted successfully"})
    else:
        return jsonify({"message": "No vectors provided"}), 400
