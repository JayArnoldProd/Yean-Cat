#!/bin/bash

# Step 1: Run backup_code_text.sh
echo "Running backup_code_text.sh..."
./GIT_GPT_SERVER/scripts/backup_code_text.sh

# Step 2: Run backup.sh
echo "Running backup.sh..."
./GIT_GPT_SERVER/scripts/backup.sh

# Step 3: Run generate_hierarchy.sh
echo "Running generate_hierarchy.sh..."
./GIT_GPT_SERVER/scripts/generate_hierarchy.sh

echo "Code backup process completed successfully!"
