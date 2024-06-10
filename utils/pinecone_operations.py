import os
import pinecone

def init_pinecone_index(index_name):
    api_key = os.getenv("PINECONE_API_KEY")
    pinecone.init(api_key=api_key)
    if not pinecone.Index.exists(index_name):
        pinecone.create_index(
            name=index_name,
            dimension=1536,
            metric="euclidean",
            spec=ServerlessSpec(
                cloud='aws',
                region='us-east-1'
            )
        )
    return pinecone.Index(index_name)

def upsert_vectors_to_pinecone(vectors):
    index_name = os.getenv("PINECONE_INDEX_NAME")
    index = pinecone.Index(index_name)
    
    # Assuming vectors is a list of tuples (id, vector)
    index.upsert(vectors)
