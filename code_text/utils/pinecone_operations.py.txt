import os
import pinecone
from pinecone import ServerlessSpec

# Initialize Pinecone index
def init_pinecone_index(index_name):
    api_key = os.getenv('PINECONE_API_KEY')

    if not api_key or not index_name:
        raise ValueError("PINECONE_API_KEY and PINECONE_INDEX_NAME must be set")

    pinecone.init(api_key=api_key)

    if index_name not in pinecone.list_indexes():
        pinecone.create_index(
            name=index_name,
            dimension=1536,
            metric="euclidean",
            pod_type="p1"
        )
    return pinecone.Index(index_name)

# Upsert vectors to Pinecone
def upsert_vectors_to_pinecone(vectors):
    index_name = os.getenv("PINECONE_INDEX_NAME")
    api_key = os.getenv("PINECONE_API_KEY")
    
    pinecone.init(api_key=api_key)
    index = pinecone.Index(index_name)
    
    # Assuming vectors is a list of tuples (id, vector)
    index.upsert(vectors)
