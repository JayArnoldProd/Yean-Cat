function update_chat_input_visuals() {
    var inputText = string_trim(global.commandBuffer);
    var firstChar = string_char_at(inputText, 1);
    
    if (inputText == "") {
        global.textColor = global.defaultTextColor;
        return;
    }
    
    if (firstChar != "/") {
        global.textColor = global.defaultTextColor;
        return;
    }
    
    if (string_length(inputText) == 1) {
        global.textColor = c_white;
        return;
    }
    
    var command = string_delete(inputText, 1, 1);
    var hasPermission = check_permission_command(command);
    var isZeroArgCommand = ds_map_exists(global.commandDetails, command) && !ds_map_exists(global.commandDetails, command + "(");
    
    if (isZeroArgCommand) {
        global.textColor = hasPermission ? c_lime : c_red;
    } else if (ds_map_exists(global.commandDetails, command + "(")) {
        var openParenPos = string_pos("(", inputText);
        if (openParenPos == 0) {
            global.textColor = c_aqua;
        } else {
            var closeParenPos = string_pos(")", inputText);
            if (closeParenPos > openParenPos) {
                global.textColor = hasPermission ? c_lime : c_red;
            } else {
                global.textColor = c_aqua;
            }
        }
    } else {
        global.textColor = c_pink;
    }
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








