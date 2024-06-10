# utils/pinecone_operations.py
import os
from pinecone import Pinecone, ServerlessSpec

def init_pinecone_index():
    PINECONE_API_KEY = os.getenv("PINECONE_API_KEY")
    PINECONE_INDEX_NAME = os.getenv("PINECONE_INDEX_NAME")
    pc = Pinecone(api_key=PINECONE_API_KEY)
    
    # Ensure the index name is valid
    index_name = PINECONE_INDEX_NAME

    if index_name not in pc.list_indexes().names():
        pc.create_index(
            name=index_name,
            dimension=1536,
            metric='euclidean',
            spec=ServerlessSpec(
                cloud='aws',
                region='us-east-1'
            )
        )
    return pc.index(index_name)
