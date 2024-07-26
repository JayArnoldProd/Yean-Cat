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
        
        var parts = string_split(line, "|||", false, 3);
        if (array_length(parts) < 3) {
            handleDebugMessage("Error loading action. Malformed line: " + line, true);
            continue;
        }
        
        var actionName = string_trim(parts[0]);
        var commandName = string_trim(parts[1]);
        var encodedParams = parts[2];
        
        var decodedParams = base64_decode(encodedParams);
        var parameters = json_parse(decodedParams);
        
        var actionEntry = ds_map_create();
        ds_map_add(actionEntry, "command", commandName);
        ds_map_add(actionEntry, "parameters", parameters);
        ds_map_add(global.actionDetails, actionName, actionEntry);
        
        handleDebugMessage("Loaded action: " + actionName + ", Command: " + commandName + ", Parameters: " + json_stringify(parameters), true);
    }
    file_text_close(file);
    handleDebugMessage("Actions loaded successfully from Actions.txt.", true);
}