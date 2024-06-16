#!/bin/bash

BUG_NAME=$1
BUG_DESCRIPTION=$2
BUG_SOURCE=$3
BUG_PRIORITY=$4
BUG_STATUS=$5
BUG_DATE_REPORTED=$6
BUG_REPORTED_BY=$7
BUG_ASSIGNED_TO=$8
BUG_GENERATION=$9
BUG_LOGS=${10}
BUG_STEPS_TO_REPRODUCE=${11}
BUG_RESOLUTION=${12}
BUG_RELATED_FEATURES=${13}

jq --arg name "$BUG_NAME" --arg description "$BUG_DESCRIPTION" --arg source "$BUG_SOURCE" --arg priority "$BUG_PRIORITY" \
   --arg status "$BUG_STATUS" --arg date_reported "$BUG_DATE_REPORTED" --arg reported_by "$BUG_REPORTED_BY" \
   --arg assigned_to "$BUG_ASSIGNED_TO" --arg generation "$BUG_GENERATION" --arg logs "$BUG_LOGS" \
   --arg steps_to_reproduce "$BUG_STEPS_TO_REPRODUCE" --arg resolution "$BUG_RESOLUTION" --arg related_features "$BUG_RELATED_FEATURES" \
   '. += [{"name": $name, "description": $description, "source": $source, "priority": $priority, "status": $status, \
   "date_reported": $date_reported, "reported_by": $reported_by, "assigned_to": $assigned_to, "generation": $generation, \
   "logs": $logs, "steps_to_reproduce": $steps_to_reproduce, "resolution": $resolution, "related_features": $related_features}]' \
   bug_list.json > tmp.json && mv tmp.json bug_list.json

echo "Bug added successfully."
