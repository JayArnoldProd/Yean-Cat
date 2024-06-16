#!/bin/bash

LIST_TYPE=$1  # Can be "bug", "planned_feature", "feature"
ENTRY_NAME=$2
FIELD_NAME=$3
NEW_VALUE=$4

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

# Check if an entry with the specified name exists
EXISTING_ENTRY=$(jq --arg name "$ENTRY_NAME" '.[] | select(.name == $name)' "$LIST_FILE")

if [ -z "$EXISTING_ENTRY" ]; then
    echo "No entry with the name '$ENTRY_NAME' found in $LIST_FILE."
    exit 1
fi

# Update the specified field
jq --arg name "$ENTRY_NAME" --arg field "$FIELD_NAME" --arg value "$NEW_VALUE" \
   '(.[] | select(.name == $name) | .[$field]) = $value' "$LIST_FILE" > tmp.json && mv tmp.json "$LIST_FILE"

echo "Entry '$ENTRY_NAME' updated successfully in $LIST_FILE."
