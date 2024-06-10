#!/bin/bash
# deploy_all.sh

# Delete all files in the code_text directory
rm -rf code_text/*

# Your existing backup logic
BACKUP_DIR="code_text"
mkdir -p $BACKUP_DIR

# Function to copy files while preserving directory structure
copy_files() {
  for file in "$@"; do
    if [[ $file == "./env.txt" ]]; then
      continue  # Skip the env.txt file
    fi
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

# Function to unhide directories and files within them
unhide_directories() {
  find $BACKUP_DIR -type d -name ".*" | while read hidden_dir; do
    mv "$hidden_dir" "$(dirname "$hidden_dir")/$(basename "$hidden_dir" | sed 's/^\.//')"
  done
}

# Find all relevant files in the root directory and subdirectories, excluding certain paths
all_files=$(find . -type f ! -path "./$BACKUP_DIR/*" ! -path "./code_text_backup/*" ! -path "./folder_backups/*" ! -path "./.git/*" ! -path "./YEAN CAT/*" ! -name ".DS_Store")

# Copy files to backup directory
copy_files $all_files

# Unhide .txt files if they were hidden originally
find $BACKUP_DIR -name ".*.txt" | while read hidden_file; do
  mv "$hidden_file" "$(dirname "$hidden_file")/$(basename "$hidden_file" | sed 's/^\.//')"
done

# Unhide hidden directories
unhide_directories

# Create the folder backups folder
FOLDER_BACKUPS="folder_backups"
mkdir -p $FOLDER_BACKUPS

# Function to create a master backup file for a folder
create_master_backup() {
    local folder=$1
    local output_file=$FOLDER_BACKUPS/$(basename $folder)_backup.txt
    
    # Empty the output file if it already exists
    > $output_file

    # Iterate over all .txt files in the folder
    for file in $folder/*.txt; do
        if [ -f "$file" ]; then
            echo "########## $(basename $file) ##########" >> $output_file
            cat $file >> $output_file
            echo -e "\n\n" >> $output_file
        fi
    done
}

# Create master backup files for each subfolder in code_text
for folder in $BACKUP_DIR/*/; do
    # Exclude the code_text_backup folder from being backed up
    if [[ $(basename $folder) != "code_text_backup" ]]; then
        create_master_backup $folder
    fi
done

# Create a master backup for the top-level .txt files
create_master_backup $BACKUP_DIR

# Add and commit changes to GitHub
git add .
git commit -m "Automated backup and deployment"

# Deploy to Heroku
heroku git:remote -a yean-cat-git-gpt
git push heroku main

echo "Backup and deployment completed successfully!"
