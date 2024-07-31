function string_wrap(str, max_width) {
    var text_wrapped = "";
    var space_pos = -1;
    var line_width = 0;
    var str_len = string_length(str);
    
    for (var i = 1; i <= str_len; i++) {
        var char = string_char_at(str, i);
        var char_width = string_width(char);
        
        if (char == " ") space_pos = i;
        
        if (line_width + char_width > max_width*1.7) {
            if (space_pos != -1) {
                text_wrapped += string_copy(str, 1, space_pos - 1) + "\n";
                str = string_delete(str, 1, space_pos);
                line_width = 0;
                i = 0;
                str_len = string_length(str);
                space_pos = -1;
            } else {
                text_wrapped += string_copy(str, 1, i - 1) + "\n";
                str = string_delete(str, 1, i - 1);
                line_width = 0;
                i = 0;
                str_len = string_length(str);
            }
        } else {
            line_width += char_width;
        }
    }
    
    text_wrapped += str;
    return text_wrapped;
}