/// @function get_longest_word_width(text, font, scale)
/// @description Returns the width of the longest word in a string
/// @param {string} text - The input text
/// @param {font} font - The font to use for width calculation
/// @param {real} scale - The scaling factor for text
/// @return {real} - The width of the longest word
function get_longest_word_width(text, font, scale) {
    draw_set_font(font);
    var words = string_split(text, " ");
    var longestWordWidth = 0;

    for (var i = 0; i < array_length(words); i++) {
        var wordWidth = string_width(words[i]) * scale;
        if (wordWidth > longestWordWidth) {
            longestWordWidth = wordWidth;
        }
    }

    return longestWordWidth;
}