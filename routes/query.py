from flask import Blueprint, jsonify
from utils.pinecone_operations import init_pinecone_index, upsert_vectors_to_pinecone

query_openai_route = Blueprint('query_openai_route', __name__)

index_name = "yean-cat-git-gpt-index"  # Use the correct index name
pinecone_instance = init_pinecone_index(index_name)
index = pinecone_instance.Index(index_name)

@query_openai_route.route('/query', methods=['POST'])
def query_openai():
    # Your endpoint logic here
    return jsonify({"message": "Pinecone index queried successfully"})

@query_openai_route.route('/generate_prompt', methods=['POST'])
def generate_prompt():
    # Your endpoint logic here
    return jsonify({"message": "GPT prompt generated successfully"})

@query_openai_route.route('/update_code', methods=['POST'])
def update_code():
    # Your endpoint logic here
    return jsonify({"message": "Code updated successfully"})

@query_openai_route.route('/assistant', methods=['POST'])
def assistant():
    # Your endpoint logic here
    return jsonify({"message": "Assistant query successful"})
