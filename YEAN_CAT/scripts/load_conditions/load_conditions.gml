function load_conditions() {
    if (file_exists("Conditions.txt")) {
        var file = file_text_open_read("Conditions.txt");
        while (!file_text_eof(file)) {
            var line = file_text_read_string(file);
            var split = string_split(line, "|||");
            if (array_length(split) == 2) {
                ds_map_set(global.conditions, split[0], json_parse(split[1]));
                handleDebugMessage("Loaded condition: " + split[0], true);
            }
            file_text_readln(file);
        }
        file_text_close(file);
        handleDebugMessage("Conditions loaded successfully from Conditions.txt.", true);
    } else {
        handleDebugMessage("Conditions.txt not found. No conditions loaded.", true);
    }
}