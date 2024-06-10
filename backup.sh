#!/bin/bash

BACKUP_DIR="code_text"
mkdir -p $BACKUP_DIR

# Function to copy files while preserving directory structure
copy_files() {
  for file in "$@"; do
    dest="$BACKUP_DIR/${file#./}"
    mkdir -p "$(dirname "$dest")"
    if [[ $file != *.txt ]]; then
      cp "$file" "$dest.txt"
    else
      cp "$file" "$dest"
    fi
    mv "$dest" "${dest#.}"  # Remove leading dot to make the file visible
  done
}

# Find all relevant files in the root directory and subdirectories
all_files=$(find . -type f ! -path "./$BACKUP_DIR/*" ! -path "./.git/*" ! -path "./YEAN CAT/*" ! -name ".DS_Store")

# Copy files to backup directory
copy_files $all_files

echo "Backup completed successfully!"
