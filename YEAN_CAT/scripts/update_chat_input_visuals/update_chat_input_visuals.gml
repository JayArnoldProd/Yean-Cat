function update_chat_input_visuals() {
    var inputLines = string_split(global.commandBuffer, global.intentionalLineBreak);
    var finalColor = global.defaultTextColor;
    var hasError = false;
    var wrappedText = "";
    
    for (var i = 0; i < array_length(inputLines); i++) {
        var inputText = inputLines[i];
        var lineColor = global.defaultTextColor;
        
        var wrappedLine = wrap_chat_text(inputText, global.wrapWidth);
        wrappedText += wrappedLine;
        if (i < array_length(inputLines) - 1) {
            wrappedText += global.intentionalLineBreak;
        }
       
        if (string_starts_with(inputText, "/")) {
            var dotIndex = string_pos(".", inputText);
            var openParenIndex = string_pos("(", inputText);
            var commandStart, commandEnd;
            
            if (dotIndex > 0 && (openParenIndex == 0 || dotIndex < openParenIndex)) {
                commandStart = dotIndex + 1;
            } else {
                commandStart = 2;
            }
            
            commandEnd = openParenIndex > 0 ? openParenIndex : string_length(inputText) + 1;
            var command = string_copy(inputText, commandStart, commandEnd - commandStart);
            
            var hasPermission = check_permission_command(command);
            var commandExists = ds_map_exists(global.commandDetails, command + "(") || ds_map_exists(global.commandDetails, command);
            var requiresParentheses = ds_map_exists(global.commandDetails, command + "(");
            
            if (!commandExists) {
                lineColor = c_pink;
            } else if (!hasPermission) {
                lineColor = c_red;
                hasError = true;
            } else {
                var openParenPos = string_pos("(", inputText);
                var closeParenPos = string_last_pos(")", inputText);
                
                if (requiresParentheses) {
                    if (openParenPos == 0) {
                        lineColor = c_aqua;
                    } else if (closeParenPos == 0 || !are_brackets_balanced(inputText)) {
                        lineColor = c_yellow;
                    } else {
                        var params = string_copy(inputText, openParenPos + 1, closeParenPos - openParenPos - 1);
                        var isValid = are_params_valid(params);
                        lineColor = isValid ? c_lime : c_yellow;
                    }
                } else {
                    lineColor = c_lime;
                }
            }
        }
        
        if (lineColor != global.defaultTextColor) {
            finalColor = lineColor;
        }
        
        if (lineColor == c_red) {
            hasError = true;
            break;
        }
    }
    
    global.commandBuffer = wrappedText;
    global.textColor = hasError ? c_red : finalColor;
    
    show_debug_message("[Client] Command buffer after update_chat_input_visuals: " + global.commandBuffer);
}