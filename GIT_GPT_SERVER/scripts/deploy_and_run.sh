#!/bin/bash
# deploy_and_run.sh

# Step 1: Set environment variables
echo "Setting environment variables..."
export OPENAI_API_KEY='sk-proj-9FMlNRVjatGHs2Gu058BT3BlbkFJHK3n2HBzVzzWnwGw3Eqh'
export GITHUB_TOKEN='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'
export ASSISTANT_API_KEY='asst_7pKEzlqGiYzHbs1v0LscYoxe'
export PINECONE_API_KEY='333283cc-9630-4a52-b47d-1898d2a1da77'

# Step 2: Update GitHub remote URL with token
echo "Updating GitHub remote URL..."
git remote set-url origin https://JayArnoldProd:${GITHUB_TOKEN}@github.com/JayArnoldProd/Yean-Cat.git

# Step 3: Run backup script
echo "Running backup script..."
./GIT_GPT_SERVER/scripts/backup.sh

# Step 4: Identify process using port 5000 and kill it
echo "Checking for existing Flask server on port 5000..."
PID=$(lsof -t -i:5000)
if [ ! -z "$PID" ]; then
    echo "Killing process $PID using port 5000..."
    kill -9 $PID
else
    echo "No process using port 5000."
fi

# Step 5: Run deploy_all script
echo "Running deploy_all script..."
./GIT_GPT_SERVER/scripts/deploy_all.sh

# Step 6: Start Flask server on port 5000
echo "Starting Flask server..."
export FLASK_APP=GIT_GPT_SERVER/server.py
flask run --port=5000 &

# Step 7: Run test API endpoints script
echo "Running test API endpoints script..."
if [ -f ./GIT_GPT_SERVER/scripts/tests/test_api_endpoints.py ]; then
    chmod +x ./GIT_GPT_SERVER/scripts/tests/test_api_endpoints.py
    ./GIT_GPT_SERVER/scripts/tests/test_api_endpoints.py
else
    echo "Test script not found."
fi

# Step 8: Generate hierarchy
echo "Generating hierarchy..."
./GIT_GPT_SERVER/scripts/generate_hierarchy.sh

echo "Deployment and run completed successfully!"
