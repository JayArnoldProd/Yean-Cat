#!/bin/bash

set -e

backup_file() {
    src=$1
    dest=$2
    if [ -f "$src" ]; then
        mkdir -p "$(dirname "$dest")"
        cp "$src" "$dest"
    fi
}

backup_folder() {
    folder=$1
    backup=$2
    if [ -d "$folder" ]; then
        mkdir -p "$(dirname "$backup")"
        find "$folder" -type f -exec sh -c 'echo "Processing $1"; echo "------ $1 ------" >> "$2"; cat "$1" >> "$2"; echo "\n" >> "$2"' _ {} "$backup" \;
    fi
}

echo "Starting backup script..."
# Update Lists
./GIT_GPT_SERVER/scripts/update_lists.sh

# Clean and recreate the backup directory
backup_dir="code_backups"
rm -rf $backup_dir
mkdir -p $backup_dir

# Clean and recreate the code_text directory
code_text_dir="code_text"
rm -rf $code_text_dir
mkdir -p $code_text_dir

# Backup files from GIT_GPT_SERVER directories to backup files
backup_folder "GIT_GPT_SERVER/scripts" "$backup_dir/scripts_backup.txt"
backup_folder "GIT_GPT_SERVER/Logs" "$backup_dir/Logs_backup.txt"
backup_folder "GIT_GPT_SERVER/.github/workflows" "$backup_dir/workflows_backup.txt"
backup_folder "GIT_GPT_SERVER/routes" "$backup_dir/routes_backup.txt"
backup_folder "GIT_GPT_SERVER/utils" "$backup_dir/utils_backup.txt"
backup_folder "GIT_GPT_SERVER/prompts" "$backup_dir/prompts_backup.txt"

# Backup grouped files
grouped_files=("GIT_GPT_SERVER/__init__.py" "GIT_GPT_SERVER/config.py" "GIT_GPT_SERVER/flask_pid.txt" "GIT_GPT_SERVER/format_description.txt" "GIT_GPT_SERVER/intro.txt" "GIT_GPT_SERVER/server.py")
for file in "${grouped_files[@]}"; do
    backup_file "$file" "$backup_dir/documentation_backup.txt"
done

main_files=("README.md" "script_list.txt" "bug_list.json" "command_list.txt" "package.json" ".slugignore" "requirements.txt" "planned_features.json")
for file in "${main_files[@]}"; do
    backup_file "$file" "$backup_dir/config_backup.txt"
done

metadata_files=(".gitignore" "pyproject.toml" "Procfile" ".gitattributes" "server_script_list.txt" "runtime.txt" "server_command_list.txt")
for file in "${metadata_files[@]}"; do
    backup_file "$file" "$backup_dir/metadata_backup.txt"
done

script_list_files=("script_list.txt" "command_list.txt")
for file in "${script_list_files[@]}"; do
    backup_file "$file" "$backup_dir/script_lists_backup.txt"
done

# Copy files to code_text directory
echo "Copying files to code_text directory..."
find GIT_GPT_SERVER -type f -exec sh -c 'mkdir -p "code_text/${1%/*}"; cp "$1" "code_text/${1}.txt"' _ {} \;

# Copy main directory files to code_text directory
main_files_for_code_text=("README.md" "script_list.txt" "bug_list.json" "command_list.txt" "package.json" ".gitignore" "pyproject.toml" "Procfile" ".gitattributes" "server_script_list.txt" "runtime.txt" "server_command_list.txt" "planned_features.json" "requirements.txt" ".slugignore")
for file in "${main_files_for_code_text[@]}"; do
    backup_file "$file" "code_text/${file}.txt"
done

# Handle hidden files
echo "Copying hidden files to code_text directory..."
hidden_files=(".gitignore" ".slugignore" ".gitattributes")
for file in "${hidden_files[@]}"; do
    if [ -f "$file" ]; then
        cp "$file" "code_text/${file}.txt"
    fi
done

# Handle .github folder
if [ -d "GIT_GPT_SERVER/.github" ]; then
    backup_folder "GIT_GPT_SERVER/.github" "$backup_dir/github_backup.txt"
fi

echo "Generating hierarchy..."

# Generate hierarchy for GIT_GPT_SERVER
echo "Generating hierarchy for GIT_GPT_SERVER..."
./GIT_GPT_SERVER/scripts/generate_hierarchy.sh GIT_GPT_SERVER hierarchies/GIT_GPT_SERVER_hierarchy.txt

# Generate hierarchy for YEAN_CAT
echo "Generating hierarchy for YEAN_CAT..."
./GIT_GPT_SERVER/scripts/generate_hierarchy.sh YEAN_CAT hierarchies/YEAN_CAT_hierarchy.txt

# Generate hierarchy for YEAN_CAT_SERVER
echo "Generating hierarchy for YEAN_CAT_SERVER..."
./GIT_GPT_SERVER/scripts/generate_hierarchy.sh YEAN_CAT_SERVER hierarchies/YEAN_CAT_SERVER_hierarchy.txt

# Generate hierarchy for the main directory
echo "Generating hierarchy for Yean-Cat..."
./GIT_GPT_SERVER/scripts/generate_hierarchy.sh . hierarchies/Yean-Cat_hierarchy.txt

echo "Hierarchy creation completed successfully!"
echo "Backup completed successfully!"
