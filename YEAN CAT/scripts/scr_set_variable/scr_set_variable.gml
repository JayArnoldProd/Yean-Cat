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
			if is_string(variable_instance_get(targetObject, variableName)) {
				if is_string(arg1) {
				var newValue = arg1;
				} else {
					//variable is string but argument is not
					handleDebugMessage("Error: Variable '" + displayName + "' must be set to a String", true);
					exit
				}
			} else {
			if is_real(variable_instance_get(targetObject, variableName)) {
				if is_numeric_string(arg1) {
				var newValue = real(arg1);
				} else {
					//variable is real but argument is not
					handleDebugMessage("Error: Variable '" + displayName + "' must be set to a Number", true);
					exit
				}
			} else {
				var newValue = -1
			}
			}
			
            // Check and convert the newValue type if necessary
            if (valueType == "real") {
                newValue = real(newValue);
            } else if (valueType == "string") {
                newValue = string(newValue);
            }
            // Validate the new value within the allowed range
            if (newValue >= min_ && newValue <= max_) {
                variable_instance_set(targetObject, variableName, newValue);
                handleDebugMessage(displayName + " set to " + string(newValue), true);
            } else {
                handleDebugMessage("Error: Value out of bounds (" + string(min_) + " to " + string(max_) + ")", true);
            }
        } else {
            handleDebugMessage("Error: Details for '" + displayName + "' not properly configured.", true);
        }
    } else {
        handleDebugMessage("Error: Variable '" + displayName + "' not found in details map.", true);
    }
}


