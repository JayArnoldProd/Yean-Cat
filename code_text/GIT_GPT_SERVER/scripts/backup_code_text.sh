#!/bin/bash

# Create the code_text directory in the root
mkdir -p code_text/GIT_GPT_SERVER

# Copy files to the code_text directory
echo "Copying files to code_text directory..."
cp README.md command_list.txt config.py flask_pid.txt format_description.txt intro.txt package.json planned_features.json pyproject.toml requirements.txt runtime.txt script_list.txt server.py server_command_list.txt server_script_list.txt code_text/

# Copy GIT_GPT_SERVER directory structure to code_text
cp -r GIT_GPT_SERVER/* code_text/GIT_GPT_SERVER/

# Remove the .env file from code_text
rm -f code_text/.env

echo "Code text backup completed successfully!"
