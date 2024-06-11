#!/bin/bash
# backup.sh

echo "Starting backup script..."

# Step 1: Delete all files in the code_text directory
echo "Deleting all files in the code_text directory..."
rm -rf code_text/*
echo "Files deleted."

# Step 2: Define backup directory
BACKUP_DIR="code_text"
mkdir -p $BACKUP_DIR

# Step 3: Function to copy files while preserving directory structure
copy_files() {
  for file in "$@"; do
    dest="$BACKUP_DIR/${file#./}"
    mkdir -p "$(dirname "$dest")"
    if [[ ! -f "$dest.txt" && $file != *.txt && $file != ./code_text/* && $file != ./folder_backups/* ]]; then
      echo "Copying $file to $dest"
      cp "$file" "$dest.txt"
      mv "$dest.txt" "${dest#.}.txt"  # Remove leading dot to make the file visible and add .txt extension
    elif [[ ! -f "$dest" && $file == *.txt && $file != ./code_text/* && $file != ./folder_backups/* ]]; then
      echo "Copying $file to $dest"
      cp "$file" "$dest"
      mv "$dest" "${dest#.}"  # Remove leading dot to make the file visible
    fi
  done
}

# Step 4: Function to unhide directories and files within them
unhide_directories() {
  find $BACKUP_DIR -type d -name ".*" | while read hidden_dir; do
    mv "$hidden_dir" "$(dirname "$hidden_dir")/$(basename "$hidden_dir" | sed 's/^\.//')"
  done
}

# Step 5: Find all relevant files in the root directory and subdirectories
all_files=$(find . -type f ! -path "./$BACKUP_DIR/*" ! -path "./.git/*" ! -path "./YEAN CAT/*" ! -path "./YEAN CAT SERVER/*" ! -path "./folder_backups/*" ! -name ".DS_Store")

# Debugging information
echo "All files to be backed up:"
echo "$all_files"

# Step 6: Copy files to backup directory
copy_files $all_files

# Step 7: Unhide .txt files if they were hidden originally
find $BACKUP_DIR -name ".*.txt" | while read hidden_file; do
  mv "$hidden_file" "$(dirname "$hidden_file")/$(basename "$hidden_file" | sed 's/^\.//')"
done

# Step 8: Unhide hidden directories
unhide_directories

# Step 9: Create the folder backups folder
FOLDER_BACKUPS="folder_backups"
mkdir -p $FOLDER_BACKUPS

# Step 10: Function to create a master backup file for a folder
create_master_backup() {
    local folder=$1
    local output_file=$FOLDER_BACKUPS/$(basename $folder)_backup.txt

    # Empty the output file if it already exists
    > $output_file

    echo "Creating master backup for $folder at $output_file"
    # Iterate over all .txt files in the folder
    for file in $(find $folder -type f -name "*.txt"); do
        if [ -f "$file" ]; then
            if ! grep -q "########## $(basename $file) ##########" $output_file; then
                echo "########## $(basename $file) ##########" >> $output_file
                cat "$file" >> $output_file
                echo -e "\n\n" >> $output_file
                echo "Added $file to $output_file"
            fi
        fi
    done
}

# Step 11: Create master backup files for each subfolder in code_text
for folder in $(find $BACKUP_DIR -mindepth 1 -maxdepth 1 -type d); do
    create_master_backup $folder
done

# Step 12: Create a master backup for the top-level .txt files
create_master_backup $BACKUP_DIR

# Step 13: Create hierarchies
create_hierarchy() {
    local base_dir=$1
    local output_file=$2

    echo "Creating hierarchy for $base_dir at $output_file"
    find "$base_dir" -type f > "$output_file"
    echo "Hierarchy created at $output_file"
}

create_hierarchy "YEAN CAT" "client_project_hierarchy.txt"
create_hierarchy "YEAN CAT SERVER" "server_project_hierarchy.txt"
create_hierarchy "." "python_heroku_gpt_server_hierarchy.txt"

echo "Backup completed successfully!"
