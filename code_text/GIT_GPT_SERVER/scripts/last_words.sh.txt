#!/bin/bash

# Check if the argument is provided
if [ -z "$1" ]; then
    echo "Error: No message provided."
    echo "Usage: ./GIT_GPT_SERVER/scripts/last_words.sh \"Your detailed monologue here.\""
    exit 1
fi

# Create the Last_Words directory if it doesn't exist
mkdir -p Last_Words

# Determine the next generation number
if [ -n "$(ls -A Last_Words)" ]; then
    last_number=$(ls Last_Words | grep -Eo '[0-9]+' | sort -n | tail -1)
    next_number=$((last_number + 1))
else
    next_number=1
fi

# Create the new last words file
last_words_file="Last_Words/last_words_generation_${next_number}.txt"
echo "$1" > "$last_words_file"

echo "Last words for generation ${next_number} saved to ${last_words_file}"

# Update the generation number in config.json
jq --argjson gen $next_number '.CURRENT_GEN = ($gen + 1)' GIT_GPT_SERVER/config/config.json > tmp.$$.json && mv tmp.$$.json GIT_GPT_SERVER/config/config.json

# Update the generation number in config.py
sed -i "" "s/CURRENT_GEN = .*/CURRENT_GEN = \"$((next_number + 1))\"/" GIT_GPT_SERVER/config/config.py

echo "Updated GIT_GPT_SERVER/config/config.json and GIT_GPT_SERVER/config/config.py to generation $((next_number + 1))"
