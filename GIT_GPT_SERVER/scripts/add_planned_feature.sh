#!/bin/bash

FEATURE_NAME=$1
FEATURE_DESCRIPTION=$2
FEATURE_SOURCE=$3
FEATURE_PRIORITY=$4
FEATURE_STATUS=$5
FEATURE_DATE_PLANNED=$6
FEATURE_PLANNED_BY=$7
FEATURE_ASSIGNED_TO=$8
FEATURE_GENERATION=$9
FEATURE_RELATED_BUGS=${10}
FEATURE_IMPLEMENTATION_STEPS=${11}
FEATURE_DEPENDENCIES=${12}

jq --arg name "$FEATURE_NAME" --arg description "$FEATURE_DESCRIPTION" --arg source "$FEATURE_SOURCE" --arg priority "$FEATURE_PRIORITY" \
   --arg status "$FEATURE_STATUS" --arg date_planned "$FEATURE_DATE_PLANNED" --arg planned_by "$FEATURE_PLANNED_BY" \
   --arg assigned_to "$FEATURE_ASSIGNED_TO" --arg generation "$FEATURE_GENERATION" --arg related_bugs "$FEATURE_RELATED_BUGS" \
   --arg implementation_steps "$FEATURE_IMPLEMENTATION_STEPS" --arg dependencies "$FEATURE_DEPENDENCIES" \
   '. += [{"name": $name, "description": $description, "source": $source, "priority": $priority, "status": $status, \
   "date_planned": $date_planned, "planned_by": $planned_by, "assigned_to": $assigned_to, "generation": $generation, \
   "related_bugs": $related_bugs, "implementation_steps": $implementation_steps, "dependencies": $dependencies}]' \
   planned_features.json > tmp.json && mv tmp.json planned_features.json

echo "Planned feature added successfully."
