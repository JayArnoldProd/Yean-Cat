function deserialize_parameters(paramString) {
    var len = string_length(paramString);
    if (len < 2 || string_char_at(paramString, 1) != "[" || string_char_at(paramString, len) != "]") {
        return [];
    }
    var result = [];
    var current = "";
    var ddepth = 0;
    var inString = false;
    
    for (var i = 2; i < len; i++) {
        var char = string_char_at(paramString, i);
        if (char == "\"" && string_char_at(paramString, i-1) != "\\") {
            inString = !inString;
            current += char;
        } else if (!inString && char == "[") {
            ddepth++;
            current += char;
        } else if (!inString && char == "]") {
            ddepth--;
            current += char;
            if (depth == 0) {
                array_push(result, deserialize_parameters(current));
                current = "";
            }
        } else if (!inString && char == "," && ddepth == 0) {
            if (current != "") {
                array_push(result, parse_value(current));
                current = "";
            }
        } else {
            current += char;
        }
    }
    if (current != "") {
        array_push(result, parse_value(current));
    }
    return result;
}