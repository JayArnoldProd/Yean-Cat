#!/bin/bash

BACKUP_DIR="code_text"
mkdir -p $BACKUP_DIR

# Function to copy files while preserving directory structure
copy_files() {
  for file in "$@"; do
    dest="$BACKUP_DIR/${file#./}"
    mkdir -p "$(dirname "$dest")"
    cp "$file" "$dest.txt"
  done
}

# Backup visible files
visible_files=$(find . -type f ! -path "./$BACKUP_DIR/*" ! -path "./.git/*" ! -name "*.txt")
copy_files $visible_files

# Backup hidden files
hidden_files=$(find . -type f -name ".*" ! -path "./$BACKUP_DIR/*" ! -path "./.git/*")
copy_files $hidden_files

echo "Backup completed successfully!"
