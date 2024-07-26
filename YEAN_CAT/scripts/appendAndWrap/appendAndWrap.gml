/// @function appendAndWrap(char, currentBuffer, maxWidth)
/// @param {string} char - the character being added
/// @param {string} currentBuffer - the current content of the command buffer
/// @param {real} maxWidth - the maximum width of a line before wrapping
/// @desc Appends a character to the buffer and wraps text if necessary.
// Function to wrap text lines and handle spaces near line ends correctly
function appendAndWrap(char, currentBuffer, maxWidth) {
    var tempBuffer = currentBuffer + char;
    var lastNewline = string_last_index_of(tempBuffer, "\n");
    var line = (lastNewline != -1) ? string_copy(tempBuffer, lastNewline + 2, string_length(tempBuffer) - lastNewline) : tempBuffer;
    var lineWidth = string_width(line);

    // Don't wrap inside parentheses for command parameters
    var openParenCount = string_count("(", line);
    var closeParenCount = string_count(")", line);
    
    if (openParenCount > closeParenCount) {
        return tempBuffer;
    }

    // Handle space near maximum line width
    if (char == " " && lineWidth >= maxWidth - string_width("w")) {
        return string_insert("\n", tempBuffer, string_length(tempBuffer));
    } else if (lineWidth > maxWidth) {
        // Insert newline at last space or force it if no space found
        var lastSpace = string_last_index_of(line, " ");
        if (lastSpace > -1) {
            return string_insert("\n", tempBuffer, lastNewline + lastSpace + 2);
        } else {
            return string_insert("\n", tempBuffer, string_length(tempBuffer));
        }
    }

    return tempBuffer;
}




