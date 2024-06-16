#!/bin/bash

LIST_TYPE=$1  # Can be "bug", "planned_feature", "feature"
ENTRY_NAME=$2

if [ "$LIST_TYPE" == "bug" ]; then
    LIST_FILE="bug_list.json"
elif [ "$LIST_TYPE" == "planned_feature" ]; then
    LIST_FILE="planned_features.json"
elif [ "$LIST_TYPE" == "feature" ]; then
    LIST_FILE="completed_features.json"
else
    echo "Invalid list type specified."
    exit 1
fi

# Check if the list file exists
if [ ! -f "$LIST_FILE" ]; then
    echo "The list file $LIST_FILE does not exist."
    exit 1
fi

# Display the entry
jq --arg name "$ENTRY_NAME" '.[] | select(.name == $name)' "$LIST_FILE"
