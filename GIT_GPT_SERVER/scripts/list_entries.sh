#!/bin/bash

LIST_TYPE=$1  # Can be "bug", "planned_feature", "feature"
STATUS_FILTER=${2:-unresolved}  # Default to showing only unresolved bugs

if [ "$LIST_TYPE" == "bug" ]; then
    LIST_FILE="bug_list.json"
    if [ "$STATUS_FILTER" == "unresolved" ]; then
        jq '.[] | select(.status != "closed")' "$LIST_FILE"
    elif [ "$STATUS_FILTER" == "all" ]; then
        jq '.' "$LIST_FILE"
    else
        echo "Invalid status filter specified. Use 'unresolved' or 'all'."
        exit 1
    fi
elif [ "$LIST_TYPE" == "planned_feature" ]; then
    LIST_FILE="planned_features.json"
    jq '.' "$LIST_FILE"
elif [ "$LIST_TYPE" == "feature" ]; then
    LIST_FILE="completed_features.json"
    jq '.' "$LIST_FILE"
else
    echo "Invalid list type specified."
    exit 1
fi
