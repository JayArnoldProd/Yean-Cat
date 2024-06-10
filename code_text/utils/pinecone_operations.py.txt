import os
import pinecone
from pinecone import Pinecone, ServerlessSpec

# Initialize Pinecone index
def init_pinecone_index(index_name):
    api_key = os.getenv('PINECONE_API_KEY')

    if not api_key or not index_name:
        raise ValueError("PINECONE_API_KEY and PINECONE_INDEX_NAME must be set")

    # Initialize the Pinecone client
    pc = Pinecone(api_key=api_key)

    # Check if the index exists, if not, create it
    if index_name not in pc.list_indexes().names():
        pc.create_index(
            name=index_name,
            dimension=1536,
            metric="euclidean",
            spec=ServerlessSpec(
                cloud='aws',
                region='us-east-1'
            )
        )
    
    # Return the initialized index
    return pc.get_index(index_name)

# Upsert vectors to Pinecone
def upsert_vectors_to_pinecone(vectors):
    index_name = os.getenv("PINECONE_INDEX_NAME")
    api_key = os.getenv("PINECONE_API_KEY")
    
    pc = Pinecone(api_key=api_key)
    index = pc.get_index(index_name)
    
    # Assuming vectors is a list of tuples (id, vector)
    index.upsert(vectors)
