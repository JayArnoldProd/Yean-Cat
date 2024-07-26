function save_actions() {
    if (ds_map_size(global.actionDetails) == 0) {
        handleDebugMessage("No actions to save.", true);
        return;
    }
    
    var file = file_text_open_write("Actions.txt");
    var actionKey = ds_map_find_first(global.actionDetails);
    
    while (!is_undefined(actionKey)) {
        var actionData = ds_map_find_value(global.actionDetails, actionKey);
        var command = actionData[? "command"];
        var parameters = actionData[? "parameters"];
        
        var paramString = json_stringify(parameters);
        var encodedParams = base64_encode(paramString);
        
        var line = actionKey + "|||" + command + "|||" + encodedParams;
        file_text_write_string(file, line);
        file_text_writeln(file);
        handleDebugMessage("Saving action: " + line, true);
        actionKey = ds_map_find_next(global.actionDetails, actionKey);
    }
    
    file_text_close(file);
    handleDebugMessage("Actions saved successfully to Actions.txt.", true);
}

//function save_actions() {
//    if (ds_map_size(global.actionDetails) == 0) {
//        handleDebugMessage("No actions to save.", true);
//        return;
//    }
    
//    var file = file_text_open_write("Actions.txt");
//    var actionKey = ds_map_find_first(global.actionDetails);
    
//    while (!is_undefined(actionKey)) {
//        var actionData = ds_map_find_value(global.actionDetails, actionKey);
//        var command = actionData[? "command"];
//        var parameters = actionData[? "parameters"];
        
//        var paramString = "[";
//        for (var i = 0; i < array_length(parameters); i++) {
//            if (is_string(parameters[i])) {
//                paramString += "\"" + parameters[i] + "\"";
//            } else {
//                paramString += string(parameters[i]);
//            }
//            if (i < array_length(parameters) - 1) {
//                paramString += ",";
//            }
//        }
//        paramString += "]";
        
//        file_text_write_string(file, actionKey + "," + command + "," + paramString);
//        file_text_writeln(file);
//        actionKey = ds_map_find_next(global.actionDetails, actionKey);
//    }
    
//    file_text_close(file);
//    handleDebugMessage("Actions saved successfully to Actions.txt.", true);
//}

