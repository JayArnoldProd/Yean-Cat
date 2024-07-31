/// @function format_boss_name(name)
/// @param {string} name - The original boss name
/// @returns {string} Formatted boss name
function format_boss_name(name) {
    // Remove spaces and dashes, capitalize first letter of each word
    var formatted_name = "";
    var capitalize_next = true;
    for (var i = 1; i <= string_length(name); i++) {
        var char = string_char_at(name, i);
        if (char == " " || char == "-") {
            capitalize_next = true;
        } else {
            if (capitalize_next) {
                formatted_name += string_upper(char);
                capitalize_next = false;
            } else {
                formatted_name += string_lower(char);
            }
        }
    }
    return formatted_name;
}