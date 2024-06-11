function scr_show_lines(lines) {
    if (lines >= 1 && lines <= 15) {
        obj_Client.maxDisplayMessages = lines;
        global.max_visible_lines = lines;
        handleDebugMessage("Display set to show " + string(lines) + " lines.", true);
    } else {
        handleDebugMessage("Invalid number of lines. Please enter a value between 1 and 15.", true);
    }
}
