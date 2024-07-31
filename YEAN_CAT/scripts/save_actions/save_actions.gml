function save_actions() {
    if (ds_map_size(global.actionDetails) == 0) {
        handleDebugMessage("No actions or action groups to save.", true);
        return;
    }
    
    var file = file_text_open_write("Actions.txt");
    var actionKey = ds_map_find_first(global.actionDetails);
    
    while (!is_undefined(actionKey)) {
        var encodedData = ds_map_find_value(global.actionDetails, actionKey);
        var line = actionKey + "|||" + encodedData;
        file_text_write_string(file, line);
        file_text_writeln(file);
        actionKey = ds_map_find_next(global.actionDetails, actionKey);
    }
    
    file_text_close(file);
    handleDebugMessage("Actions and action groups saved successfully to Actions.txt.", true);
}