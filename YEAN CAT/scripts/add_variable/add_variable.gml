// Function to add a variable to the management system
function add_variable(displayName, variableName, defaultValue, objectType, varType, min_, max_, presetValues, presetNames, category) {
    var entry = ds_map_create();
    ds_map_add(entry, "displayName", displayName); // Friendly name for display
    ds_map_add(entry, "variableName", variableName); // Actual variable name in code
    ds_map_add(entry, "value", defaultValue); // Current value
    ds_map_add(entry, "objectType", objectType); // Object associated with the variable
    ds_map_add(entry, "type", varType); // Data type of the variable
    ds_map_add(entry, "min", min_); // Minimum value for the variable
    ds_map_add(entry, "max", max_); // Maximum value for the variable
    ds_map_add(entry, "presetValues", presetValues); // Array of preset acceptable values
	ds_map_add(entry, "presetNames", presetValues); // Array of preset acceptable values
    ds_map_add(entry, "category", category); // Category for better organizatio
    ds_map_add(global.variableDetails, displayName, entry);
}
