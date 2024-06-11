#!/bin/bash

echo "Starting backup script..."

# Define directories and files to backup
backup_directories=("planned_features.json" "server.py" "intro.txt" "requirements.txt" ".slugignore" "server_project_hierarchy.txt" "format_description.txt" "runtime.txt" "pyproject.toml" "tests/test_api_endpoints.py" "utils/pinecone_operations.py" "utils/file_operations.py" "utils/openai_operations.py" "README.md" "backup.sh" "Logs/SessionLog_45453.16.txt" "Logs/server_logs.json" ".gitignore" "package.json" ".env" "update_lists.sh" "deploy_all.sh" "bug_list.json" ".github/workflows/main.yml" ".gitattributes" "prompts/test_prompt.txt" "client_project_hierarchy.txt" "deploy.sh" "command_list.txt" "Procfile" "script_list.txt" "routes/query.py" "routes/assistant.py" "routes/generate_prompt.py" "routes/update_code.py" "python_heroku_gpt_server_hierarchy.txt")

# Delete all files in the code_text directory
rm -rf code_text/*
mkdir -p code_text

echo "Files deleted."

# Copy files to code_text directory
for file in "${backup_directories[@]}"; do
    if [[ -f "$file" ]]; then
        cp "$file" code_text/
        echo "Copying $file to code_text/"
    fi
done

# Backup directories and files to folder_backups
backup_directories=("tests" "SERVER" "utils" "Logs" "github" "prompts" "routes")
for dir in "${backup_directories[@]}"; do
    if [[ -d "code_text/$dir" ]]; then
        backup_file="folder_backups/${dir}_backup.txt"
        echo "Creating master backup for code_text/$dir at $backup_file"
        > "$backup_file"
        find "code_text/$dir" -type f | while read -r file; do
            echo "Adding $file to $backup_file"
            cat "$file" >> "$backup_file"
        done
    fi
done

# Create a master backup for the entire code_text directory
backup_file="folder_backups/code_text_backup.txt"
echo "Creating master backup for code_text at $backup_file"
> "$backup_file"
find code_text -type f | while read -r file; do
    echo "Adding $file to $backup_file"
    cat "$file" >> "$backup_file"
done

echo "Backup completed successfully!"
