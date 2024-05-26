/// @function last_key_is_valid_character(key)
/// @param {string} key - The last character entered
/// @desc Checks if the last key is a valid character for chat input
/// @return {bool} - True if the key is valid, false otherwise
function last_key_is_valid_character(key) {
    // Define a string of valid characters (letters, numbers, special characters)
    var validCharacters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_`~ ";
	var validKeys = [
		191, // "/" and “?”
		188, // "," and “<”
		190, // "." and “>”
		220, // "\" and “|”
		219, // "[" and “{”
		221, // "]" and “}”
		186, // ";" and “:”
		222, // "'" and “””
		24 // "=" and “+”
	];
    // Define a list of invalid keys
    var invalidKeys = [
        vk_left, vk_right, vk_up, vk_down, vk_delete, vk_shift, vk_tab,
        vk_capslock, vk_escape, vk_home, vk_end, vk_pageup, vk_pagedown,
        vk_control, vk_alt, vk_menu, vk_pause, 92, 91
    ];

    // Check if the key is in the list of invalid keys
    for (var i = 0; i < array_length(invalidKeys); i++) {
        if (keyboard_lastkey == invalidKeys[i]) {
            return false;
        }
    }

    // Check if the key is in the list of valid characters
	for (var i = 0; i < array_length(validKeys); i++) {
        if (keyboard_lastkey == validKeys[i]) {
            return true;
        }
    }
	
    if (string_pos(chr(key), validCharacters) > 0) {
        return true;
    }

    return false;
}
