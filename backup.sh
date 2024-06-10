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
      mv "$dest.txt" "${dest#.}.txt"  # Remove leading dot to make the file visible and add .txt extension
    else
      cp "$file" "$dest"
      mv "$dest" "${dest#.}"  # Remove leading dot to make the file visible
    fi
  done
}

# Find all relevant files in the root directory and subdirectories
all_files=$(find . -type f ! -path "./$BACKUP_DIR/*" ! -path "./.git/*" ! -path "./YEAN CAT/*" ! -name ".DS_Store")

# Copy files to backup directory
copy_files $all_files

# Unhide .txt files if they were hidden originally
find $BACKUP_DIR -name ".*.txt" | while read hidden_file; do
  mv "$hidden_file" "$(dirname "$hidden_file")/$(basename "$hidden_file" | sed 's/^\.//')"
done

echo "Backup completed successfully!"
