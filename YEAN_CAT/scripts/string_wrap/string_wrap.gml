// Helper function for string wrapping
function string_wrap(str, max_width) {
    var str_len = string_length(str);
    var last_space = 1;
    var count = 1;
    var substr;
    
    repeat(str_len) {
        substr = string_copy(str, 1, count);
        if (string_width(substr) > max_width) {
            str = string_delete(str, last_space, 1);
            str = string_insert("\n", str, last_space);
            count = last_space;
        }
        
        if (string_char_at(str, count) == " ") {
            last_space = count;
        }
        
        count++;
    }
    
    return str;
}
