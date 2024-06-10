import os
import pinecone

def init_pinecone_index(index_name):
    api_key = os.getenv("PINECONE_API_KEY")
    pinecone.init(api_key=api_key)
    
    # Create a Pinecone client instance
    pc = pinecone.Client()

    # Check if the index exists and create it if it doesn't
    if index_name not in pc.list_indexes():
        pinecone.create_index(index_name, dimension=128)  # Use appropriate dimension
    return pinecone.Index(index_name)

# Upsert vectors to Pinecone
def upsert_vectors_to_pinecone(vectors):
    index_name = os.getenv("PINECONE_INDEX_NAME")
    
    # Initialize Pinecone index
    index = init_pinecone_index(index_name)
    
    # Assuming vectors is a list of tuples (id, vector)
    index.upsert(vectors)
