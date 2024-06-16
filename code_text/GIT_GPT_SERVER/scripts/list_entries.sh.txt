#!/bin/bash

LIST_TYPE=$1  # Can be "bugs", "planned_features", "features"
STATUS_FILTER=${2:-unresolved}  # Default to showing only unresolved bugs

BUG_LIST_FILE="./bug_list.json"
PLANNED_FEATURES_FILE="./planned_features.json"
FEATURES_FILE="./completed_features.json"

list_entries() {
    local file=$1
    if [ ! -f $file ]; then
        echo "[]"
    else
        cat $file
    fi
}

case $LIST_TYPE in
    bugs)
        if [ "$STATUS_FILTER" == "unresolved" ]; then
            list_entries $BUG_LIST_FILE | jq '.[] | select(.status != "closed")' | jq -s
        elif [ "$STATUS_FILTER" == "all" ]; then
            list_entries $BUG_LIST_FILE | jq '.'
        else
            echo "Invalid status filter specified. Use 'unresolved' or 'all'."
            exit 1
        fi
        ;;
    planned_features)
        list_entries $PLANNED_FEATURES_FILE | jq '.'
        ;;
    features)
        jq -s '.[0] + .[1]' <(list_entries $PLANNED_FEATURES_FILE) <(list_entries $FEATURES_FILE)
        ;;
    *)
        echo "Invalid list type specified."
        exit 1
        ;;
esac
