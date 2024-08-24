#!/bin/bash

# Function to backup a directory with specific file patterns
backup_directory() {
    local source_dir=$1
    local backup_file=$2
    shift 2
    local patterns=("$@")

    # Clear the backup file before writing new data
    : > "$backup_file"

    echo "Backing up files from $source_dir to $backup_file..."
    for pattern in "${patterns[@]}"; do
        find "$source_dir" -type f -name "$pattern" | while read -r file; do
            # Skip files larger than 1MB
            if [ $(stat -f%z "$file") -gt 1048576 ]; then
                echo "Skipping large file: $file"
                continue
            fi
            echo "== Begin: ${file##*/}" >> "$backup_file"
            cat "$file" >> "$backup_file"
            echo -e "\n== End: ${file##*/}\n" >> "$backup_file"
        done
    done
    echo "Backup completed for $source_dir to $backup_file"
}

# Ensure the code_backups directory exists
mkdir -p code_backups

# List of directories to backup
backup_dirs=(
    "code_text/GIT_GPT_SERVER/scripts"
    "code_text/GIT_GPT_SERVER/Logs"
    "code_text/GIT_GPT_SERVER/routes"
    "code_text/GIT_GPT_SERVER/scripts/tests"
    "code_text/GIT_GPT_SERVER/utils"
    "code_text/GIT_GPT_SERVER/prompts"
)

# Backup each directory
for dir in "${backup_dirs[@]}"; do
    backup_file="code_backups/$(basename "$dir")_backup.txt"
    backup_directory "$dir" "$backup_file" "*.txt"
done

# Backup specific groups of files
backup_directory "Documentation" "code_backups/documentation_backup.txt" "*.txt"
backup_directory "Prompt_Assembly" "code_backups/documentation_backup.txt" "*.txt"
backup_directory "code_text" "code_backups/config_backup.txt" "config.py.txt" "pyproject.toml.txt" "requirements.txt.txt" "runtime.txt.txt"
backup_directory "code_text" "code_backups/metadata_backup.txt" "command_list.txt.txt" "planned_features.json.txt"

# Explicitly include specific files that may be missed
backup_directory "code_text" "code_backups/documentation_backup.txt" "Game_Command_Format_Documentation.txt.txt" "Terminal_Commands_Documentation.txt.txt"

# Create a focused ui_backup.txt for YEAN_UI files
ui_backup_file="code_backups/ui_backup.txt"
: > "$ui_backup_file"
echo "Creating focused UI backup in $ui_backup_file..."
ui_files=(
    "code_text/YEAN_UI/examples/example_apple_metal/AppViewController.h.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/AppViewController.mm.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/ScriptExecutor.h.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/ScriptExecutor.mm.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/UIHelpers.h.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/UIHelpers.mm.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/CommandExecutor.h.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/CommandExecutor.mm.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/CommandInputView.h.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/CommandInputView.mm.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/OutputDisplayView.h.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/OutputDisplayView.mm.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/main.mm.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/README.md.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/iOS/Info-iOS.plist.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/iOS/LaunchScreen.storyboard.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/macOS/Info-macOS.plist.txt"
    "code_text/YEAN_UI/examples/example_apple_metal/macOS/MainMenu.storyboard.txt"
)

echo "Debugging: Listing contents of code_text/YEAN_UI/examples/example_apple_metal/"
ls -l code_text/YEAN_UI/examples/example_apple_metal/

for file in "${ui_files[@]}"; do
    if [ -f "$file" ]; then
        echo "Processing file: $file"
        file_size=$(stat -f%z "$file")
        echo "File size: $file_size bytes"
        echo "== Begin: ${file##*/}" >> "$ui_backup_file"
        cat "$file" >> "$ui_backup_file"
        echo -e "\n== End: ${file##*/}\n" >> "$ui_backup_file"
    else
        echo "File not found: $file"
    fi
done

echo "UI backup completed. Final size of $ui_backup_file: $(stat -f%z "$ui_backup_file") bytes"

# Append Last_Words files to the documentation_backup.txt
LAST_WORDS_DIR="Last_Words"
documentation_backup="code_backups/documentation_backup.txt"

if [ -d "$LAST_WORDS_DIR" ]; then
    echo "Appending Last_Words files to $documentation_backup..."
    for file in "$LAST_WORDS_DIR"/*.txt; do
        [ -e "$file" ] || continue
        echo "== Begin: ${file##*/}" >> "$documentation_backup"
        cat "$file" >> "$documentation_backup"
        echo -e "\n== End: ${file##*/}\n" >> "$documentation_backup"
    done
    echo "Last_Words files appended to $documentation_backup"
else
    echo "Last_Words directory does not exist. Skipping."
fi

# Convert README.md to plain text and append to documentation_backup.txt
if [ -f "Documentation/README.md" ]; then
    echo "Converting README.md to plain text and appending to documentation_backup.txt..."
    pandoc "Documentation/README.md" -t plain -o "Documentation/README.txt"
    echo "== Begin: README.txt" >> "$documentation_backup"
    cat "Documentation/README.txt" >> "$documentation_backup"
    echo -e "\n== End: README.txt\n" >> "$documentation_backup"
    rm "Documentation/README.txt"
else
    echo "README.md does not exist. Skipping."
fi

echo "Backup script completed successfully!"
