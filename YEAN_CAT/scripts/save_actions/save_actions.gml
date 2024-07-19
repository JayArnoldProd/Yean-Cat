function save_actions() {
    if (ds_map_size(global.actionDetails) == 0) {
        handleDebugMessage("No actions to save.", true);
        return;
    }
    
    var file = file_text_open_write("Actions.txt");
    var actionKey = ds_map_find_first(global.actionDetails);
    
    // Iterate over each action entry and save it in the desired format
    while (actionKey != undefined) {
        var actionData = ds_map_find_value(global.actionDetails, actionKey);
        var command = actionData[? "command"];
        var parameters = actionData[? "parameters"];
        
        // Format the parameters correctly
        var paramsString = "[ ";
        for (var i = 0; i < array_length(parameters); i++) {
            var param = parameters[i];
            // Convert param to the appropriate data type string
            if (is_real(param) || string_is_real(param)) {
                paramsString += string(real(param));
            } else if (is_string(param)) {
                paramsString += "\"" + string_replace_all(param, "\"", "\\\"") + "\"";
            }
            if (i < array_length(parameters) - 1) {
                paramsString += ", ";
            }
        }
        paramsString += " ]";
        
        file_text_write_string(file, actionKey + "," + command + "," + paramsString);
        file_text_writeln(file);
        actionKey = ds_map_find_next(global.actionDetails, actionKey);
    }
    
    file_text_close(file);
    handleDebugMessage("Actions saved successfully to Actions.txt.", true);
}

///// @function save_actions()
///// @description Saves the global.actionDetails to Actions.txt
//function save_actions() {
//    if (ds_map_size(global.actionDetails) == 0) {
//        handleDebugMessage("No actions to save.", true);
//        return;
//    }

//    var file = file_text_open_write("Actions.txt");
//    var actionKey = ds_map_find_first(global.actionDetails);

//    // Iterate over each action entry and save it in the desired format
//    while (actionKey != undefined) {
//        var actionData = ds_map_find_value(global.actionDetails, actionKey);
//        var command = actionData[? "command"];
//        var parameters = actionData[? "parameters"];

//        // Format the parameters correctly
//        var paramsString = "[ ";
//        for (var i = 0; i < array_length(parameters); i++) {
//            var param = parameters[i];

//            // Convert param to the appropriate data type string
//            if (is_real(param) || string_is_real(param)) {
//                paramsString += string(real(param));
//            } else if (is_string(param)) {
//                paramsString += "\"" + string_trim(param) + "\"";
//            }

//            if (i < array_length(parameters) - 1) {
//                paramsString += ", ";
//            }
//        }
//        paramsString += " ]";

//        file_text_write_string(file, actionKey + "," + command + "," + paramsString);
//        file_text_writeln(file);

//        actionKey = ds_map_find_next(global.actionDetails, actionKey);
//    }

//    file_text_close(file);
//    handleDebugMessage("Actions saved successfully to Actions.txt.", true);
//}





