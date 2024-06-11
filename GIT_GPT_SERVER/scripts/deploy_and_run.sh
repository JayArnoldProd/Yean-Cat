#!/bin/bash
# deploy_and_run.sh

# Step 1: Set environment variables
echo "Setting environment variables..."
export OPENAI_API_KEY='sk-proj-9FMlNRVjatGHs2Gu058BT3BlbkFJHK3n2HBzVzzWnwGw3Eqh'
export GITHUB_TOKEN='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'
export ASSISTANT_API_KEY='asst_7pKEzlqGiYzHbs1v0LscYoxe'
export PINECONE_API_KEY='333283cc-9630-4a52-b47d-1898d2a1da77'

# Step 2: Change to the project directory
cd /Users/joshuaarnold/Documents/GitHub/Yean-Cat

# Step 3: Update the GitHub remote URL with the token
echo "Updating GitHub remote URL..."
git remote set-url origin https://JayArnoldProd:$GITHUB_TOKEN@github.com/JayArnoldProd/Yean-Cat.git

# Step 4: Make backup script executable and run it
echo "Running backup script..."
chmod +x GIT_GPT_SERVER/scripts/backup.sh
./GIT_GPT_SERVER/scripts/backup.sh

# Step 5: Run the deploy_all script
echo "Running deploy_all script..."
chmod +x GIT_GPT_SERVER/scripts/deploy_all.sh
./GIT_GPT_SERVER/scripts/deploy_all.sh

# Step 6: Kill any process using port 5000
echo "Killing any process using port 5000..."
PORT=5000
fuser -k ${PORT}/tcp

# Step 7: Start the Flask server
echo "Starting the Flask server..."
export FLASK_APP=GIT_GPT_SERVER/server.py
flask run &

# Step 8: Run test API endpoints script
echo "Running test API endpoints script..."
chmod +x GIT_GPT_SERVER/tests/test_api_endpoints.py
./GIT_GPT_SERVER/tests/test_api_endpoints.py

# Step 9: Generate hierarchy
echo "Generating hierarchy..."
chmod +x GIT_GPT_SERVER/scripts/generate_hierarchy.sh
./GIT_GPT_SERVER/scripts/generate_hierarchy.sh

echo "Deployment and run completed successfully!"
