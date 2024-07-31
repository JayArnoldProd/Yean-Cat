function execute_multiple_commands(commands) {
    var commandList = string_split(commands, global.intentionalLineBreak);
    for (var i = 0; i < array_length(commandList); i++) {
        var command = string_trim(commandList[i]);
        if (string_starts_with(command, "/")) {
            command = string_delete(command, 1, 1);
            execute_command(command);
        } else if (command != "") {
            // Handle non-command text (e.g., chat messages)
            var chatMessage = "[" + master.playername + "] " + command;
            global.message_is_bubble = 1;
            handleDebugMessage(chatMessage, -1);
            global.message_is_bubble = 0;
        }
    }
}