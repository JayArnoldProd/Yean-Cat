#!/bin/bash

# Get the current generation
CURRENT_GEN=$(./GIT_GPT_SERVER/scripts/get_config.py CURRENT_GEN)
CURRENT_DATE=$(date '+%Y-%m-%d')

# Define paths
BUG_LIST_FILE="./bug_list.json"
FIXED_BUGS_FILE="./fixed_bugs.json"

# Check if fixed_bugs.json exists, create if it doesn't
if [ ! -f $FIXED_BUGS_FILE ]; then
    echo "[]" > $FIXED_BUGS_FILE
fi

# Extract closed bugs and remaining bugs
CLOSED_BUGS=$(jq 'map(select(.status == "closed"))' $BUG_LIST_FILE)
REMAINING_BUGS=$(jq 'map(select(.status != "closed"))' $BUG_LIST_FILE)

# Append closed bugs to fixed_bugs.json
if [ "$(echo $CLOSED_BUGS | jq 'length')" -gt 0 ]; then
    jq --argjson closed "$CLOSED_BUGS" '. + $closed' $FIXED_BUGS_FILE > tmp.json && mv tmp.json $FIXED_BUGS_FILE
fi

# Update bug_list.json with remaining bugs
echo "$REMAINING_BUGS" > $BUG_LIST_FILE

echo "Closed bugs moved to $FIXED_BUGS_FILE and removed from $BUG_LIST_FILE successfully."
