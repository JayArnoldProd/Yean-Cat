/// @function formatChatInput(text)
/// @description Inserts line breaks into a single string of text based on pixel width limits.
/// @param {string} text - The input text to format.
// This function formats the input text to fit within the specified width
function formatChatInput(inputText) {
    var formattedText = "";
    var currentLine = "";
    var words = string_split(inputText, " ");

    for (var i = 0; i < array_length(words); i++) {
        var word = words[i];
        // Check if adding this word would exceed the width
        if (string_width(currentLine + word) > global.chat_threshold) {
            // Add a new line if the current line is not empty
            if (currentLine != "") {
                formattedText += currentLine + "\n";
                currentLine = "";
            }
            // Move the current word to the next line if it alone does not exceed width
            if (string_width(word) <= global.chat_threshold) {
                currentLine = word;
            } else {
                // Split long word across multiple lines if necessary
                while (string_width(word) > global.chat_threshold) {
                    // Split the word by characters until it fits
                    var partialWord = "";
                    while (string_width(partialWord + string_char_at(word, 1)) <= global.chat_threshold && string_length(word) > 0) {
                        partialWord += string_char_at(word, 1);
                        word = string_delete(word, 1, 1);
                    }
                    formattedText += partialWord + "\n";
                }
                currentLine = word;  // Start with what's left of the long word
            }
        } else {
            // Append the word to the current line
            currentLine += (currentLine == "" ? "" : " ") + word;
        }
    }

    // Append any remaining text in the current line
    if (currentLine != "") {
        formattedText += currentLine;
    }

    return formattedText;
}



