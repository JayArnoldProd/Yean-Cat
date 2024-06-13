# GIT_GPT_SERVER/utils/sanitize_logs.py

import os

def sanitize_log_content(content):
    sensitive_keys = [
        "GITHUB_API_URL",
        "GITHUB_TOKEN",
        "ASSISTANT_ID",
        "PINECONE_API_KEY",
        "PINECONE_INDEX_NAME",
        "GITHUB_USERNAME"
    ]

    for key in sensitive_keys:
        value = os.getenv(key)
        if value:
            content = content.replace(value, "*********")

    return content
