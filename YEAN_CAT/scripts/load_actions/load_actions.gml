function load_actions() {
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
        if (string_length(line) == 0) continue;
        
        var parts = string_split(line, ",");
        if (array_length(parts) < 3) {
            handleDebugMessage("Error loading action. Malformed line: " + line, true);
            continue;
        }
        
        var actionName = string_trim(parts[0]);
        var commandName = string_trim(parts[1]);
        var parameters = [];
        
        for (var i = 2; i < array_length(parts); i++) {
            var param = string_trim(parts[i]);
            if (string_char_at(param, 1) == "\"" && string_char_at(param, string_length(param)) == "\"") {
                param = string_copy(param, 2, string_length(param) - 2);
            } else if (string_digits(param) == param) {
                param = real(param);
            }
            array_push(parameters, param);
        }
        
        var actionData = ds_map_create();
        ds_map_add(actionData, "command", commandName);
        ds_map_add(actionData, "parameters", parameters);
        ds_map_add(global.actionDetails, actionName, actionData);
        
        handleDebugMessage("Loaded action: " + actionName + ", Command: " + commandName + ", Parameters: " + string(parameters), true);
    }
    file_text_close(file);
    handleDebugMessage("Actions loaded successfully from Actions.txt.", true);
    debug_action_details();
}















