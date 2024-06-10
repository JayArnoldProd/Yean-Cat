import os
from pinecone import Pinecone, ServerlessSpec

PINECONE_API_KEY = os.getenv('PINECONE_API_KEY')

def init_pinecone_index(index_name='yean-cat-git-gpt-index'):
    pc = Pinecone(api_key=PINECONE_API_KEY)
    if index_name not in pc.list_indexes().names():
        pc.create_index(
            name=index_name,
            dimension=1536,
            metric='euclidean',
            spec=ServerlessSpec(
                cloud='aws',
                region='us-west-2'
            )
        )
    return pc.Index(index_name)

def upsert_vectors_to_pinecone(index, vectors):
    index.upsert(vectors=vectors)
