import os
import pinecone

# Initialize Pinecone and create an index if it doesn't exist
def init_pinecone_index(index_name):
    if index_name not in pinecone.list_indexes():
        pinecone.create_index(index_name, dimension=128)  # Use appropriate dimension
    return pinecone.Index(index_name)

# Upsert vectors to Pinecone
def upsert_vectors_to_pinecone(vectors):
    index_name = os.getenv("PINECONE_INDEX_NAME")
    api_key = os.getenv("PINECONE_API_KEY")
    
    pinecone.init(api_key=api_key)
    index = init_pinecone_index(index_name)
    
    # Assuming vectors is a list of tuples (id, vector)
    index.upsert(vectors)
