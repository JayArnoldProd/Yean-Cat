#!/bin/bash

set -e

# Source the backup configuration
source ./GIT_GPT_SERVER/scripts/backup_config.sh

# Run the update lists script to generate script and command lists
./GIT_GPT_SERVER/scripts/update_lists.sh

# Create backup directory if it doesn't exist
backup_dir="code_backups"
mkdir -p "$backup_dir"

# Function to backup directories
backup_directories() {
    local directories=("$@")
    for dir in "${directories[@]}"; do
        if [ -d "$dir" ]; then
            tar -czf "$backup_dir/${dir}_backup.tar.gz" "$dir"
            echo "$dir backup completed."
        else
            echo "$dir does not exist, skipping..."
        fi
    done
}

# Function to backup files
backup_files() {
    local files=("$@")
    for file in "${files[@]}"; do
        if [ -f "$file" ]; then
            cp "$file" "$backup_dir/$(basename "$file").backup"
            echo "$file backup completed."
        else
            echo "$file does not exist, skipping..."
        fi
    done
}

# Backup directories and files
backup_directories "${backup_directories[@]}"
backup_directories "${git_gpt_server_directories[@]}"
backup_files "${git_gpt_server_files[@]}"
backup_files "${misc_files[@]}"

# Generate hierarchy files
generate_hierarchy() {
    local dir=$1
    local output_file=$2

    echo "Generating hierarchy for $dir..."
    if [ -d "$dir" ]; then
        tree "$dir" > "$output_file"
        echo "Hierarchy generated at $output_file"
    else
        echo "$dir does not exist, skipping hierarchy generation..."
    fi
}

generate_hierarchy "GIT_GPT_SERVER" "hierarchies/GIT_GPT_SERVER_hierarchy.txt"
generate_hierarchy "YEAN_CAT" "hierarchies/YEAN_CAT_hierarchy.txt"
generate_hierarchy "YEAN_CAT_SERVER" "hierarchies/YEAN_CAT_SERVER_hierarchy.txt"
generate_hierarchy "." "hierarchies/Yean-Cat_hierarchy.txt"

echo "Backup script completed successfully!"
