// Script to set a game variable's value based on dynamic input
function scr_set_variable(arg0, arg1) {
    var displayName = arg0;
    // Ensure the variableDetails map exists and has the correct key
    if (ds_map_exists(global.variableDetails, displayName)) {
        var variableDetails = ds_map_find_value(global.variableDetails, displayName);
        if (variableDetails != undefined) {
            var min_ = variableDetails[? "min"];
            var max_ = variableDetails[? "max"];
            var valueType = variableDetails[? "type"];
            var variableName = variableDetails[? "variableName"];
            var targetObject = variableDetails[? "objectType"];
            var currentValue = variable_instance_get(targetObject, variableName);
            var newValue;

            if (valueType == "bool") {
                // Handle boolean type
                if (is_string(arg1)) {
                    arg1 = string_lower(string_trim(arg1));
                    if (arg1 == "true" || arg1 == "\"true\"" || arg1 == "1") {
                        newValue = true;
                    } else if (arg1 == "false" || arg1 == "\"false\"" || arg1 == "0") {
                        newValue = false;
                    } else {
                        handleDebugMessage("Error: Invalid boolean value for '" + displayName + "'. Use true, false, 1, or 0.", false);
                        exit;
                    }
                } else if (is_real(arg1)) {
                    newValue = (arg1 != 0);
                } else {
                    handleDebugMessage("Error: Invalid type for boolean variable '" + displayName + "'", false);
                    exit;
                }
            } else if (is_string(currentValue)) {
                if (is_string(arg1)) {
                    newValue = arg1;
                } else {
                    handleDebugMessage("Error: Variable '" + displayName + "' must be set to a String", false);
                    exit;
                }
            } else if (is_real(currentValue)) {
                if (is_numeric_string(arg1)) {
                    newValue = real(arg1);
                } else {
                    handleDebugMessage("Error: Variable '" + displayName + "' must be set to a Number", false);
                    exit;
                }
            } else {
                handleDebugMessage("Error: Unsupported variable type for '" + displayName + "'", false);
                exit;
            }
            
            // Check and convert the newValue type if necessary
            if (valueType == "real") {
                newValue = real(newValue);
            } else if (valueType == "string") {
                newValue = string(newValue);
            }

            // Validate the new value within the allowed range (skip for boolean)
            if (valueType == "bool" || (newValue >= min_ && newValue <= max_)) {
                variable_instance_set(targetObject, variableName, newValue);
                handleDebugMessage(displayName + " set to " + string(newValue), false);
            } else {
                handleDebugMessage("Error: Value out of bounds (" + string(min_) + " to " + string(max_) + ")", false);
            }
        } else {
            handleDebugMessage("Error: Details for '" + displayName + "' not properly configured.", false);
        }
    } else {
        handleDebugMessage("Error: Variable '" + displayName + "' not found in details map.", false);
    }
}


