import os
import pinecone

def init_pinecone_index(index_name):
    api_key = os.getenv("PINECONE_API_KEY")
    pinecone.init(api_key=api_key)
    if index_name not in pinecone.list_indexes():
        pinecone.create_index(index_name, dimension=128)  # Use appropriate dimension
    return pinecone.Index(index_name)

def upsert_vectors_to_pinecone(vectors):
    index_name = os.getenv("PINECONE_INDEX_NAME")
    api_key = os.getenv("PINECONE_API_KEY")
    
    pinecone.init(api_key=api_key)
    index = pinecone.Index(index_name)
    
    # Assuming vectors is a list of tuples (id, vector)
    index.upsert(vectors)
