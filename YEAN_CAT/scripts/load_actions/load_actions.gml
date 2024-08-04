function load_actions() {
    if (file_exists("Actions.txt")) {
        var file = file_text_open_read("Actions.txt");
        while (!file_text_eof(file)) {
            var line = file_text_read_string(file);
            var split = string_split(line, "|||");
            if (array_length(split) == 2) {
                ds_map_set(global.actionDetails, split[0], split[1]);
                handleDebugMessage("Loaded action: " + split[0], true);
            }
            file_text_readln(file);
        }
        file_text_close(file);
        handleDebugMessage("Actions and action groups loaded successfully from Actions.txt.", true);
    } else {
        handleDebugMessage("Actions.txt not found. No actions or action groups loaded.", true);
    }
}