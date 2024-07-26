/// @description Draws chat messages within given bounds and manages outlines
/// @param {ds_list} messages - The list of messages to draw
/// @param {real} x - The x-coordinate for drawing messages
/// @param {real} startY - The starting y-coordinate for drawing messages
/// @param {real} maxLinesToShow - The max number of lines to show in the chat box
/// @param {real} sca - Scale for text
/// @param {boolean} visible_ - does it draw the chat message?
/// @param {color} col1 - Outline color
/// @param {color} col2 - Text color
/// @returns {int} total number of lines in all messages
function drawChatMessages(messages, x, startY, maxLinesToShow, sca, visible_, col1, col2) {
    var currentY = startY;
    var totalVisibleLines = 0;
    var outlineOffset = 3; // Pixel offset for the outline effect
    var totalLines = 0; // Count total lines in all messages for proper scroll calculation
    var maxWidth = room_width - x - 20; // Maximum width for text wrapping

    // First, count total lines and create a combined message
    var combined_message = "";
    for (var i = 0; i < ds_list_size(messages); i++) {
        var message = ds_list_find_value(messages, i);
        var lines = string_split(message, "\n");
        totalLines += array_length(lines);
        combined_message += (i > 0 ? "\n" : "") + message;
    }

    if (visible_) {
        var lines = string_split(combined_message, "\n");
        var startLine = min(scrollIndex, max(0, totalLines - maxLinesToShow));
        
        for (var i = startLine; i < min(totalLines, startLine + maxLinesToShow); i++) {
            var line = lines[i];
            drawTextWithOutline(x, currentY, line, sca, outlineOffset, col1, col2, maxWidth);
            currentY += global.chat_line_height * sca * 1.9;
            totalVisibleLines++;
        }
    }

    return totalLines;
}






