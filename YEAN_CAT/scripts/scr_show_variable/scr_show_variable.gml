/// @function scr_show_variable(varName)
/// @description Shows the value of a variable by name
function scr_show_variable(varName) {
    var variableValue = undefined;
    var found = false;

    // Check if the variable is in the variableDetails map
    if (ds_map_exists(global.variableDetails, varName)) {
        var variableDetails = ds_map_find_value(global.variableDetails, varName);
        var variableName = variableDetails[? "variableName"];
        var targetObject = variableDetails[? "objectType"];

        // Fetch the value from the appropriate object or global scope
        if (targetObject == global) {
            if (variable_instance_exists(global, variableName)) {
                variableValue = variable_global_get(variableName);
                found = true;
				
            }
			
        } else {
            if (variable_instance_exists(targetObject, variableName)) {
                variableValue = variable_instance_get(targetObject, variableName);
                found = true;
            }
        }
    }

    if (found) {
        handleDebugMessage(varName + ": " + string(variableValue), true);
    } else {
        handleDebugMessage("Error: Variable '" + varName + "' does not exist.", true);
    }
}
