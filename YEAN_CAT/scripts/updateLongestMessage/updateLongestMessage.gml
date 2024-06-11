function updateLongestMessage(messages) {
    var maxWidth = 0;
    for (var i = 0; i < ds_list_size(messages); i++) {
        var message = ds_list_find_value(messages, i);
        var lines = string_split(message, "\n");
        for (var j = 0; j < array_length(lines); j++) {
            var line = lines[j];
            var lineWidth = string_width(line);
            if (lineWidth > maxWidth) {
                maxWidth = lineWidth; // Update maxWidth if this line is wider
            }
        }
    }
    return maxWidth;
}

