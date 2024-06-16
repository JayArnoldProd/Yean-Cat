#!/bin/bash

LIST_TYPE=$1  # Can be "bug", "planned_feature", "feature"
SEARCH_FIELD=$2
SEARCH_VALUE=$3

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

# Search for entries
jq --arg field "$SEARCH_FIELD" --arg value "$SEARCH_VALUE" \
   '.[] | select(.[$field] == $value)' "$LIST_FILE"
