// Function to wrap the entire text at once

function wrap_chat_text(str, max_width) {
    var text_wrapped = "";
    var line_width = 0;
    var word_array = string_split(str, " ");
    var space_width = string_width(" ");
    
    for (var i = 0; i < array_length(word_array); i++) {
        var word = word_array[i];
        var word_width = string_width(word);
        
        if (line_width + word_width > max_width) {
            if (text_wrapped != "") {
                text_wrapped += "\n";
            }
            text_wrapped += word;
            line_width = word_width;
        } else {
            if (text_wrapped != "") {
                text_wrapped += " ";
                line_width += space_width;
            }
            text_wrapped += word;
            line_width += word_width;
        }
    }
    
    return text_wrapped;
}


