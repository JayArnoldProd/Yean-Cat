function update_chat_input_visuals() {
    var inputText = string_trim(global.commandBuffer);
    show_debug_message("Input text: '" + inputText + "'");
    
    if (inputText == "") {
        global.textColor = global.defaultTextColor;
        show_debug_message("Empty input, setting default color");
        return;
    }
    
    if (string_char_at(inputText, 1) != "/") {
        global.textColor = global.defaultTextColor;
        show_debug_message("Not a command, setting default color");
        return;
    }
    
    var commandEnd = string_pos("(", inputText);
    if (commandEnd == 0) commandEnd = string_length(inputText) + 1;
    
    var command = string_copy(inputText, 2, commandEnd - 2);
    show_debug_message("Extracted command: '" + command + "'");
    
    var hasPermission = check_permission_command(command);
    var commandExists = ds_map_exists(global.commandDetails, command + "(") || ds_map_exists(global.commandDetails, command);
    var requiresParentheses = ds_map_exists(global.commandDetails, command + "(");
    
    show_debug_message("Command exists: " + string(commandExists) + ", Requires parentheses: " + string(requiresParentheses) + ", Has permission: " + string(hasPermission));
    
    if (!commandExists) {
        global.textColor = c_pink;
        show_debug_message("Command doesn't exist, setting color to pink");
        return;
    }
    
    if (!hasPermission) {
        global.textColor = c_red;
        show_debug_message("No permission, setting color to red");
        return;
    }
    
    var openParenPos = string_pos("(", inputText);
    var closeParenPos = string_last_pos(")", inputText);
    
    if (requiresParentheses) {
        if (openParenPos == 0) {
            global.textColor = c_aqua;
            show_debug_message("Parentheses required but not opened, setting color to aqua");
        } else if (closeParenPos == 0 || !are_brackets_balanced(inputText)) {
            global.textColor = c_yellow;
            show_debug_message("Parentheses or brackets not properly closed, setting color to yellow");
        } else {
            var params = string_copy(inputText, openParenPos + 1, closeParenPos - openParenPos - 1);
            var isValid = are_params_valid(params);
            global.textColor = isValid ? c_lime : c_yellow;
            show_debug_message("Params: '" + params + "', Is valid: " + string(isValid) + ", Setting color to " + (global.textColor == c_lime ? "green" : "yellow"));
        }
    } else {
        global.textColor = c_lime;
        show_debug_message("No parentheses needed, setting color to green");
    }
    
    show_debug_message("Final text color set to: " + (global.textColor == c_lime ? "green" : (global.textColor == c_red ? "red" : (global.textColor == c_yellow ? "yellow" : (global.textColor == c_aqua ? "aqua" : (global.textColor == c_pink ? "pink" : "unknown"))))));
}

//// Function to update the color of the chatbox text based on command input
//function update_chat_input_visuals() {
//    var inputText = string_trim(global.commandBuffer);
//    var firstChar = string_char_at(inputText, 1);

//    if (inputText == "") {
//        global.textColor = global.defaultTextColor;
//    } else if (firstChar == "/") {
//        if (string_length(inputText) == 1) {
//            global.textColor = c_white; // Initial '/' is white
//        } else {
//            var commandEnd = string_pos(" ", inputText);
//            if (commandEnd == 0) commandEnd = string_length(inputText);
//            var argsStart = string_pos("(", inputText);
//            var argsEnd = string_pos(")", inputText);

//            // Adjust the commandEnd if "(" is part of the command
//            if (argsStart > 0 && argsStart < commandEnd) {
//                commandEnd = argsStart;
//            }
//            var command = string_copy(inputText, 2, commandEnd - 1);
//            var hasPermission = check_permission_command(command);

//            // Ensure the command is valid before changing the color based on arguments
//            if (ds_map_exists(global.commandDetails, command)) {
//                // Call handleCommandWithArgs to manage the text color based on command validation
//                global.textColor = handleCommandWithArgs(argsStart, argsEnd, command, hasPermission);
//            } else {
//                // If the command is not valid, do not turn it aqua just for typing '('
//                global.textColor = c_pink;  // Set to pink as the command is not recognized
//            }
//        }
//    } else {
//        global.textColor = global.defaultTextColor;
//    }
//}



//// Function to update the color of the chatbox text based on command input
//function update_chat_input_visuals() {
//    var inputText = string_trim(global.commandBuffer);
//    var firstChar = string_char_at(inputText, 1);

//    if (inputText == "") {
//        global.textColor = global.defaultTextColor;
//    } else if (firstChar == "/") {
//        if (string_length(inputText) == 1) {
//            global.textColor = c_white; // Initial '/' is white
//        } else {
//            var commandEnd = string_pos(" ", inputText);
//            if (commandEnd == 0) commandEnd = string_length(inputText);
//            var argsStart = string_pos("(", inputText);
//            var argsEnd = string_pos(")", inputText);

//            // Adjust the commandEnd if "(" is part of the command
//            if (argsStart > 0 && argsStart < commandEnd) {
//                commandEnd = argsStart;
//            }
//            var command = string_copy(inputText, 2, commandEnd - 1);
//            var hasPermission = check_permission_command(command);

//            // Ensure the command is valid before changing the color based on arguments
//            if (ds_map_exists(global.commandDetails, command)) {
//                // Extract and validate array arguments
//                var argsString = string_copy(inputText, argsStart + 1, argsEnd - argsStart - 1);
//                var isValidArray = true;

//                if (string_pos("[", argsString) > 0 && string_pos("]", argsString) > 0) {
//                    var arrayStart = string_pos("[", argsString);
//                    var arrayEnd = string_pos("]", argsString);
//                    var arrayString = string_copy(argsString, arrayStart + 1, arrayEnd - arrayStart - 1);
//                    var arrayParams = string_split(arrayString, ",");

//                    // Check if each element is a valid parameter
//                    for (var i = 0; i < array_length(arrayParams); i++) {
//                        if (string_trim(arrayParams[i]) == "") {
//                            isValidArray = false;
//                            break;
//                        }
//                    }
//                }

//                // Check if command parameters are valid
//                if (isValidArray) {
//                    global.textColor = handleCommandWithArgs(argsStart, argsEnd, command, hasPermission);
//                } else {
//                    global.textColor = c_pink; // Set to pink if the array is invalid
//                }
//            } else {
//                global.textColor = c_pink;  // Set to pink if the command is not recognized
//            }
//        }
//    } else {
//        global.textColor = global.defaultTextColor;
//    }
//}



//// Function to update the color of the chatbox text based on command input
//function update_chat_input_visuals() {
//    var inputText = string_trim(global.commandBuffer);
//    var firstChar = string_char_at(inputText, 1);

//    if (inputText == "") {
//        global.textColor = global.defaultTextColor;
//    } else if (firstChar == "/") {
//        if (string_length(inputText) == 1) {
//            global.textColor = c_white; // Initial '/' is white
//        } else {
//            var commandEnd = string_pos(" ", inputText);
//            if (commandEnd == 0) commandEnd = string_length(inputText);
//            var argsStart = string_pos("(", inputText);
//            var argsEnd = string_pos(")", inputText);

//            // Adjust the commandEnd if "(" is part of the command
//            if (argsStart > 0 && argsStart < commandEnd) {
//                commandEnd = argsStart;
//            }
//            var command = string_copy(inputText, 2, commandEnd - 1);
//            var hasPermission = check_permission_command(command);

//            // Ensure the command is valid before changing the color based on arguments
//            if (ds_map_exists(global.commandDetails, command)) {
//                // Extract and validate array arguments
//                var argsString = string_copy(inputText, argsStart + 1, argsEnd - argsStart - 1);
//                var isValidArray = true;

//                if (string_pos("[", argsString) > 0 && string_pos("]", argsString) > 0) {
//                    var arrayStart = string_pos("[", argsString);
//                    var arrayEnd = string_pos("]", argsString);
//                    var arrayString = string_copy(argsString, arrayStart + 1, arrayEnd - arrayStart - 1);
//                    var arrayParams = string_split(arrayString, ",");

//                    // Check if each element is a valid parameter
//                    for (var i = 0; i < array_length(arrayParams); i++) {
//                        if (string_trim(arrayParams[i]) == "") {
//                            isValidArray = false;
//                            break;
//                        }
//                    }
//                }

//                // Call `handleCommandWithArgs` to manage the text color based on command validation
//                if (isValidArray) {
//                    global.textColor = handleCommandWithArgs(argsStart, argsEnd, command, hasPermission);
//                } else {
//                    global.textColor = c_pink; // Set to pink if the array is invalid
//                }
//            } else {
//                // If the command is not valid, do not turn it aqua just for typing '('
//                global.textColor = c_pink;  // Set to pink as the command is not recognized
//            }
//        }
//    } else {
//        global.textColor = global.defaultTextColor;
//    }
//}








