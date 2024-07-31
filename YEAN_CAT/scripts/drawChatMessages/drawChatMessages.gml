function drawChatMessages(messages, x, y, maxLines, scale, draw, color1, color2) {
    var lineHeight = global.chat_line_height;
    var displayedLines = 0;
    var totalLines = 0;

    for (var i = 0; i < ds_list_size(messages); i++) {
        var message = ds_list_find_value(messages, i);
        var messageLines = string_split(message, "\n");
        totalLines += array_length(messageLines);
    }

    var startIndex = max(0, min(scrollIndex, totalLines - maxLines));

    for (var i = 0; i < ds_list_size(messages); i++) {
        var message = ds_list_find_value(messages, i);
        var messageLines = string_split(message, "\n");
        for (var j = 0; j < array_length(messageLines); j++) {
            if (displayedLines >= startIndex && displayedLines < startIndex + maxLines) {
                if (draw) {
                    draw_set_color(color2);  // Change this to white
                    draw_text_transformed(x, y + ((displayedLines - startIndex) * lineHeight), messageLines[j], scale, scale, 0);
                }
            }
            displayedLines++;
            if (displayedLines >= startIndex + maxLines) break;
        }
        if (displayedLines >= startIndex + maxLines) break;
    }

    return totalLines;
}