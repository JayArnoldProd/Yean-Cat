// Function to add command details
function add_command(cmd, lvl, args, requiresParentheses) {
    var cmdEntry = ds_map_create();
    ds_map_add(cmdEntry, "requiredLevel", lvl);
    
    // Check if args array is not empty and contains at least one non-empty array element
    var argsRequired = false;
    var argCount = 0; // Initialize argCount
    if (array_length(args) > 0) {
        for (var i = 0; i < array_length(args); i++) {
            if (array_length(args[i]) > 0) {
                argsRequired = true;
                argCount++; // Increment for each argument type array
            }
        }
    }
    
    ds_map_add(cmdEntry, "argsRequired", argsRequired);
    ds_map_add(cmdEntry, "arg_count", argCount); // Adding arg_count to the command details
    ds_map_add(cmdEntry, "arg_types", args);
    ds_map_add(cmdEntry, "requiresParentheses", requiresParentheses);
    ds_map_add(global.commandDetails, cmd, cmdEntry);
}


