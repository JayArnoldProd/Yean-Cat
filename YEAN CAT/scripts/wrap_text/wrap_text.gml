/// @function wrap_text(text, max_width)
/// @description Inserts `\n` where necessary to wrap text within `max_width`.
/// @param {string} text - The input text to wrap
/// @param {real} max_width - The maximum width allowed before wrapping
/// @return {string} - The wrapped text
function wrap_text(text, max_width) {
    var words = string_split(text, " ");
    var wrapped_text = "";
    var current_line = "";
    
    draw_set_font(Font_Default);  // Set font to calculate string width

    for (var i = 0; i < array_length(words); i++) {
        var word = words[i];
        var test_line = current_line == "" ? word : current_line + " " + word;

        if (string_width(test_line)*text_scale > max_width) {
            // Insert a new line
            wrapped_text += (current_line + "\n");
            current_line = word;
			
        } else {
            current_line = test_line;
        }
    }

    wrapped_text += current_line;  // Add the last line

    return wrapped_text;
}




