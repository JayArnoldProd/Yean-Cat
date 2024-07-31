/// @function appendAndWrap(char, currentBuffer, maxWidth)
/// @param {string} char - the character being added
/// @param {string} currentBuffer - the current content of the command buffer
/// @param {real} maxWidth - the maximum width of a line before wrapping
/// @desc Appends a character to the buffer and wraps text if necessary.
// Function to wrap text lines and handle spaces near line ends correctly
function appendAndWrap(char, currentBuffer, maxWidth) {
    var tempBuffer = currentBuffer + char;
    var lines = string_split(tempBuffer, global.intentionalLineBreak);
    var wrappedText = "";
    
    for (var j = 0; j < array_length(lines); j++) {
        var words = string_split(lines[j], " ");
        var line = "";
        
        for (var i = 0; i < array_length(words); i++) {
            var testLine = line + (line != "" ? " " : "") + words[i];
            if (string_width(testLine) > maxWidth*1.8) {
                if (line != "") {
                    wrappedText += line + "\n";
                    line = words[i];
                } else {
                    // If a single word is longer than maxWidth, we need to break it
                    var remainingWord = words[i];
                    while (string_width(remainingWord) > maxWidth*1.8) {
                        var breakIndex = floor(string_length(remainingWord) * (maxWidth / string_width(remainingWord)));
                        wrappedText += string_copy(remainingWord, 1, breakIndex) + "";
                        remainingWord = string_delete(remainingWord, 1, breakIndex);
                    }
                    line = remainingWord;
                }
            } else {
                line = testLine;
            }
        }
        
        wrappedText += line;
        if (j < array_length(lines) - 1) {
            wrappedText += global.intentionalLineBreak;
        }
    }
    
    return wrappedText;
}