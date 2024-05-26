/// @function load_actions()
/// @description Loads actions from Actions.txt
function load_actions() {
    // Clear existing actionDetails map
    ds_map_clear(global.actionDetails);

    var filePath = "Actions.txt";
    if (!file_exists(filePath)) {
        handleDebugMessage("Actions.txt not found. Starting with an empty actions map.", true);
        return;
    }

    var file = file_text_open_read(filePath);
    while (!file_text_eof(file)) {
        var line = file_text_read_string(file);
        file_text_readln(file);

        if (string_length(line) == 0) continue; // Skip empty lines

        // Split the action into components using ',' separators
        var separatorPos1 = string_pos(",", line);
        var separatorPos2 = string_pos_ext(",", line, separatorPos1 + 1);

        if (separatorPos1 == 0 || separatorPos2 == 0) {
            handleDebugMessage("Error loading action. Malformed line: " + line, true);
            continue;
        }

        var actionName = string_trim(string_copy(line, 1, separatorPos1 - 1));
        var commandName = string_trim(string_copy(line, separatorPos1 + 1, separatorPos2 - separatorPos1 - 1));
        var paramsString = string_trim(string_copy(line, separatorPos2 + 1, string_length(line)));

        // Parse the parameters string into an array using the new parsing function
        var paramsArray = parse_action_parameters(paramsString);

        // Create the action data map
        var actionData = ds_map_create();
        ds_map_add(actionData, "command", commandName);
        ds_map_add(actionData, "parameters", paramsArray);

        ds_map_replace(global.actionDetails, actionName, actionData);
    }

    file_text_close(file);
    handleDebugMessage("Actions loaded successfully from Actions.txt.", true);

    // Debug print the contents of `global.actionDetails`
    debug_action_details();
}

















