#!/bin/bash

set -e

echo "Starting backup script..."

# Source the backup configuration
source ./GIT_GPT_SERVER/scripts/backup_config.sh

# Run the update lists script to generate script and command lists
./GIT_GPT_SERVER/scripts/update_lists.sh
echo "Backed up Lists!"

# Create backup directory if it doesn't exist
backup_dir="code_backups"
code_text_dir="code_text"
mkdir -p "$backup_dir"
mkdir -p "$code_text_dir"

# Function to backup a directory and create text files
backup_directory() {
    local directory=$1
    local backup_file=$2

    echo "Backing up files from $directory to $backup_file..."
    for file in "$directory"/*; do
        if [ -f "$file" ]; then
            echo "Processing $file"
            # Append file contents to the backup file
            echo -e "\n------ $file ------\n$(cat "$file")" >> "$backup_file"
            # Copy file to code_text directory
            target_file="$code_text_dir/${file}.txt"
            mkdir -p "$(dirname "$target_file")"
            cp "$file" "$target_file"
        fi
    done
}

# Function to backup a group of files
backup_group() {
    local output_file=$1
    shift
    local group=("$@")
    echo "Backing up group of files to $output_file..."
    for file in "${group[@]}"; do
        if [ -f "$file" ]; then
            echo "Processing $file"
            # Append file contents to the backup file
            echo -e "\n------ $file ------\n$(cat "$file")" >> "$output_file"
            # Copy file to code_text directory
            target_file="$code_text_dir/${file}.txt"
            mkdir -p "$(dirname "$target_file")"
            cp "$file" "$target_file"
        fi
    done
}

# Backup each specified directory
for dir in "${directories[@]}"; do
    dir_name=$(basename "$dir")
    backup_file="$backup_dir/${dir_name}_backup.txt"
    backup_directory "$dir" "$backup_file"
done

# Backup miscellaneous files in logical groups
backup_group "$backup_dir/documentation_backup.txt" "${group1[@]}"
backup_group "$backup_dir/config_backup.txt" "${group2[@]}"
backup_group "$backup_dir/script_lists_backup.txt" "${group3[@]}"
backup_group "$backup_dir/metadata_backup.txt" "${group4[@]}"
backup_group "$backup_dir/git_files_backup.txt" "${group5[@]}"

# Generate hierarchy
echo "Generating hierarchy..."
./GIT_GPT_SERVER/scripts/generate_hierarchy.sh

echo "Backup completed successfully!"
