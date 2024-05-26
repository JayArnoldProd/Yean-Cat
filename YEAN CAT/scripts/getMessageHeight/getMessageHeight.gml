// Returns the number of lines in a single message
function getMessageHeight(message) {
    var lines = string_split(message, "\n");
    return array_length(lines);
}
