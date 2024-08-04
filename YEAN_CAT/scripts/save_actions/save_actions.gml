function save_actions() {
    var file = file_text_open_write("Actions.txt");
    var key = ds_map_find_first(global.actionDetails);
    
    while (!is_undefined(key)) {
        var encodedData = ds_map_find_value(global.actionDetails, key);
        var line = key + "|||" + encodedData;
        file_text_write_string(file, line);
        file_text_writeln(file);
        key = ds_map_find_next(global.actionDetails, key);
    }
    
    file_text_close(file);
    handleDebugMessage("Actions and action groups saved successfully to Actions.txt.", true);
}