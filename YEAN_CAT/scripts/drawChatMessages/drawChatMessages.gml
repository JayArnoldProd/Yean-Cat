/// @description Draws chat messages within given bounds and manages outlines
/// @param {ds_list} messages - The list of messages to draw
/// @param {real} x - The x-coordinate for drawing messages
/// @param {real} startY - The starting y-coordinate for drawing messages
/// @param {real} maxLinesToShow - The max number of lines to show in the chat box
/// @param {real} sca - Scale for text
/// @param {boolean} visible_ - does it draw the chat message?
/// @returns {int} total number of lines in all messages
function drawChatMessages(messages, x, startY, maxLinesToShow, sca, visible_, col1, col2) {
    var currentY = startY;
    var totalVisibleLines = 0;
	var lines = -1
	var lines2 = -1
    var outlineOffset = 3; // Pixel offset for the outline effect
    var totalLines = 0; // Count total lines in all messages for proper scroll calculation

    for (var i = 0; i < ds_list_size(messages); i++) {
        var message = ds_list_find_value(messages, i);
        lines = string_split(message, "\n");
        totalLines += array_length(lines); // Count lines for each message
    }
	if visible_ = true { // only draw if is visible, this allows for counting the lines without drawing them.
		//creates a new combined message with line breaks between messages.
	var split_message = ""
	for (var i = 0; i < ds_list_size(messages); i++) {
				var message = ds_list_find_value(messages, i);
				if i>0 {
				split_message+="\n"
				}
				split_message+=message	
			}
	repeat (clamp(totalLines,0,maxLinesToShow)) {	
        for (var j = 0; j < totalLines && totalVisibleLines < maxLinesToShow; j++) {
			if j>scrollIndex+totalVisibleLines-1 {
			//now we pull the line data from the new 
			var lines2 = string_split(split_message, "\n");
            var line = lines2[j];

            drawTextWithOutline(x, currentY, line, sca, outlineOffset, col1 , col2);

            currentY += global.chat_line_height * sca * 1.9; // Adjust y position based on scale
            totalVisibleLines++;
			}
		}
}
}
//clamp(scrollIndex,0,999999)
    return totalLines; // Return the total number of lines in all messages
}






