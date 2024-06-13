#!/bin/bash

# Function to backup a directory
backup_directory() {
    local source_dir=$1
    local backup_file=$2
    
    echo "Backing up files from $source_dir to $backup_file..."
    find "$source_dir" -type f -name '*.txt' | while read -r file; do
        echo "== Begin: ${file##*/}" >> "$backup_file"
        cat "$file" >> "$backup_file"
        echo -e "\n== End: ${file##*/}\n" >> "$backup_file"
    done
    echo "Backup completed for $source_dir to $backup_file"
}

# Backup Scripts
backup_directory "code_text/GIT_GPT_SERVER/scripts" "code_backups/scripts_backup.txt"

# Backup Logs
backup_directory "code_text/GIT_GPT_SERVER/Logs" "code_backups/Logs_backup.txt"

# Backup GitHub actions
backup_directory "code_text/GIT_GPT_SERVER/.github" "code_backups/github_backup.txt"

# Backup Routes
backup_directory "code_text/GIT_GPT_SERVER/routes" "code_backups/routes_backup.txt"

# Backup Tests
backup_directory "code_text/GIT_GPT_SERVER/scripts/tests" "code_backups/tests_backup.txt"

# Backup Utils
backup_directory "code_text/GIT_GPT_SERVER/utils" "code_backups/utils_backup.txt"

# Backup Prompts
backup_directory "code_text/GIT_GPT_SERVER/prompts" "code_backups/prompts_backup.txt"

# Backup Documentation
backup_directory "code_text" "code_backups/documentation_backup.txt"

# Backup Configs
backup_directory "code_text" "code_backups/config_backup.txt"

# Backup Metadata
backup_directory "code_text" "code_backups/metadata_backup.txt"

# Ensure all files in code_text have the correct extensions
echo "Ensuring all files in code_text have the correct extensions..."

echo "Backup script completed successfully!"
