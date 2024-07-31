function wrap_chat_text(text, width) {
    var wrappedText = "";
    var lines = string_split(text, global.intentionalLineBreak);
    
    for (var l = 0; l < array_length(lines); l++) {
        var words = string_split(lines[l], " ");
        var currentLine = "";
        
        for (var i = 0; i < array_length(words); i++) {
            var word = words[i];
            var testLine = currentLine == "" ? word : currentLine + " " + word;
            
            if (string_width(testLine) > width * 1.8) {  // Allow 20% more width before wrapping
                if (currentLine != "") {
                    wrappedText += currentLine + "\n";
                    currentLine = "";
                }
                
                // Handle long words
                while (string_width(word) > width * 1.8) {
                    var splitIndex = 1;
                    while (string_width(string_copy(word, 1, splitIndex)) <= width * 1.8) {
                        splitIndex++;
                    }
                    wrappedText += string_copy(word, 1, splitIndex - 1) + "\n";
                    word = string_delete(word, 1, splitIndex - 1);
                }
                
                currentLine = word;
            } else {
                currentLine = testLine;
            }
        }
        
        wrappedText += currentLine;
        if (l < array_length(lines) - 1) {
            wrappedText += global.intentionalLineBreak;
        }
    }
    
    return wrappedText;
}