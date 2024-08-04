function load_action_conditions() {
    if (file_exists("ActionConditions.txt")) {
        var file = file_text_open_read("ActionConditions.txt");
        while (!file_text_eof(file)) {
            var line = file_text_read_string(file);
            var split = string_split(line, "|||");
            if (array_length(split) == 2) {
                var parsed_data = json_parse(split[1]);
                ds_map_set(global.actionConditions, split[0], parsed_data);
                handleDebugMessage("Loaded action condition: " + split[0] + " with data: " + json_stringify(parsed_data), true);
            } else {
                handleDebugMessage("Invalid action condition line: " + line, true);
            }
            file_text_readln(file);
        }
        file_text_close(file);
        handleDebugMessage("Action conditions loaded successfully from ActionConditions.txt.", true);
    } else {
        handleDebugMessage("ActionConditions.txt not found. No action conditions loaded.", true);
    }
}