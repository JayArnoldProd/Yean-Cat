/// @function countLinesInString(text)
/// @param {string} text - The text to count lines in
/// @return {int} - Number of lines in the string
function countLinesInString(text) {
    var lines = string_split(text, "\n");
    return array_length(lines);
}
