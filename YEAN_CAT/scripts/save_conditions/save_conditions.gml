function save_conditions() {
    var file = file_text_open_write("Conditions.txt");
    var key = ds_map_find_first(global.conditions);
    
    while (!is_undefined(key)) {
        var conditionData = ds_map_find_value(global.conditions, key);
        var line = key + "|||" + json_stringify(conditionData);
        file_text_write_string(file, line);
        file_text_writeln(file);
        key = ds_map_find_next(global.conditions, key);
    }
    
    file_text_close(file);
    handleDebugMessage("Conditions saved successfully to Conditions.txt.", true);
}