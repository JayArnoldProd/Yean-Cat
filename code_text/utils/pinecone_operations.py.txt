import os
import pinecone

PINECONE_API_KEY = os.getenv('PINECONE_API_KEY')

def init_pinecone_index(index_name='yean-cat-git-gpt-index'):
    pinecone.init(api_key=PINECONE_API_KEY)
    if index_name not in pinecone.list_indexes():
        pinecone.create_index(name=index_name, dimension=1536, metric='euclidean')
    return pinecone.Index(index_name)

def upsert_vectors_to_pinecone(index, vectors):
    index.upsert(vectors=vectors)
