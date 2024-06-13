#!/bin/bash

# Ensure the Last_Words directory exists
LAST_WORDS_DIR="/Users/joshuaarnold/Documents/GitHub/Yean-Cat/Last_Words"
mkdir -p "$LAST_WORDS_DIR"

# Function to generate the last words file
generate_last_words() {
    local message="$1"

    # Find the highest existing last words file number
    latest_file=$(ls "$LAST_WORDS_DIR" | grep -Eo 'last_words_generation_[0-9]+\.txt' | sort -V | tail -n 1)
    if [ -z "$latest_file" ]; then
        new_number=1
    else
        latest_number=$(echo "$latest_file" | grep -Eo '[0-9]+')
        new_number=$((latest_number + 1))
    fi

    new_file="$LAST_WORDS_DIR/last_words_generation_${new_number}.txt"

    # Write the message to the new file
    echo "$message" > "$new_file"
    echo "Last words saved to $new_file"
}

# Check if a message argument was provided
if [ -z "$1" ]; then
    echo "Usage: $0 \"Your last words message\""
    exit 1
fi

# Call the function to generate the last words file
generate_last_words "$1"
