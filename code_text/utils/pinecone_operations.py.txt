import pinecone
import os

PINECONE_API_KEY = os.getenv("PINECONE_API_KEY")

def init_pinecone_index():
    pc = pinecone.Pinecone(
        api_key=PINECONE_API_KEY
    )

    # Create index if it does not exist
    if 'yean_cat' not in pc.list_indexes().names():
        pc.create_index(
            name='yean_cat',
            dimension=1536,
            metric='euclidean',
            spec=pinecone.ServerlessSpec(
                cloud='aws',
                region='us-west-2'
            )
        )

    return pc.index('yean_cat')

def upsert_vectors_to_pinecone(vectors):
    index = init_pinecone_index()
    index.upsert(vectors)
