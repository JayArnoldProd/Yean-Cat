function get_variable_value(varName) {
    var variableValue = undefined;
    
    // Check if the variable is in the variableDetails map
    if (ds_map_exists(global.variableDetails, varName)) {
        var variableDetails = ds_map_find_value(global.variableDetails, varName);
        var variableName = variableDetails[? "variableName"];
        var targetObject = variableDetails[? "objectType"];
        
        // Fetch the value from the appropriate object or global scope
        if (targetObject == global) {
            if (variable_global_exists(variableName)) {
                variableValue = variable_global_get(variableName);
            }
        } else {
            if (instance_exists(targetObject) && variable_instance_exists(targetObject, variableName)) {
                variableValue = variable_instance_get(targetObject, variableName);
            }
        }
    }
    
    // If it's not in the variable database, treat it as a literal value
    if (is_undefined(variableValue)) {
        if (string_digits(varName) == varName) {
            // If it's all digits, convert to a number
            return real(varName);
        }
        // Otherwise, return it as a string
        return varName;
    }
    
    return variableValue;
}