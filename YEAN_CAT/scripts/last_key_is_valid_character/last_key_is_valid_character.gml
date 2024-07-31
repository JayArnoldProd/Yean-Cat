/// @function last_key_is_valid_character(key)
/// @param {string} key - The last character entered
/// @desc Checks if the last key is a valid character for chat input
/// @return {bool} - True if the key is valid, false otherwise
function last_key_is_valid_character(key) {
    // Define a string of valid characters (letters, numbers, special characters)
    var validCharacters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_`~ ";
    var validKeys = [
        vk_space,
        191, // "/" and "?"
        188, // "," and "<"
        190, // "." and ">"
        220, // "\" and "|"
        219, // "[" and "{"
        221, // "]" and "}"
        186, // ";" and ":"
        222, // "'" and """
        24 // "=" and "+"
    ];
    
    // Check if the key is the space key
    if (key == vk_space) {
        return true;
    }

    // Check if the key is in the list of valid keys
    for (var i = 0; i < array_length(validKeys); i++) {
        if (key == validKeys[i]) {
            return true;
        }
    }

    // Check if the key is a valid character
    if (string_pos(chr(key), validCharacters) > 0) {
        return true;
    }

    return false;
}
