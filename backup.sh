#!/bin/bash

echo "Starting backup script..."

# Define directories and files to exclude from the backup
exclude_patterns=("YEAN CAT" "YEAN CAT SERVER" ".git" "node_modules" "__pycache__" "*.pyc" ".DS_Store" "*.yyp" "*.yy" "*.otf" "*.ttf" "*.pdf" "*.zip" "*.csv" "*.png" "*.ogg" "code_text" "folder_backups")

# Function to check if a file should be excluded
should_exclude() {
    local file=$1
    for exclude in "${exclude_patterns[@]}"; do
        if [[ $file == *$exclude* ]]; then
            return 0
        fi
    done
    return 1
}

# Delete all files in the code_text directory
rm -rf code_text/*
mkdir -p code_text

echo "Files deleted."

# Copy files to code_text directory, maintaining directory structure and creating a .txt file for each
find . -type f | while read -r file; do
    if should_exclude "$file"; then
        continue
    fi

    # Create the corresponding directory in code_text
    dir=$(dirname "$file" | sed 's|^\./||')
    mkdir -p "code_text/$dir"

    # Get the file extension and base name
    base_name=$(basename "$file")
    dest_file="code_text/$dir/$base_name.txt"

    # Copy the file content to the .txt file
    cp "$file" "$dest_file"
    echo "Copying $file to $dest_file"
done

# Create individual backup files for each subdirectory in code_text
for dir in $(find code_text -type d); do
    backup_file="folder_backups/$(basename "$dir")_backup.txt"
    echo "Creating backup for $dir at $backup_file"
    > "$backup_file"
    find "$dir" -type f | while read -r file; do
        echo "Adding $file to $backup_file"
        cat "$file" >> "$backup_file"
    done
done

echo "Backup completed successfully!"
