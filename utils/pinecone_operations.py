import os
from pinecone import Pinecone, ServerlessSpec

def init_pinecone_index(index_name):
    api_key = os.getenv("PINECONE_API_KEY")
    pc = Pinecone(api_key=api_key)
    if index_name not in pc.list_indexes():
        pc.create_index(
            name=index_name,
            dimension=1536,
            metric="euclidean",
            spec=ServerlessSpec(
                cloud='aws',
                region='us-east-1'
            )
        )
    return pc.index(index_name)

def upsert_vectors_to_pinecone(vectors):
    index_name = os.getenv("PINECONE_INDEX_NAME")
    api_key = os.getenv("PINECONE_API_KEY")
    pc = Pinecone(api_key=api_key)
    index = pc.index(index_name)
    
    # Assuming vectors is a list of tuples (id, vector)
    index.upsert(vectors)
