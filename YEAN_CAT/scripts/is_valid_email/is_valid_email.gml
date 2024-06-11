// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_valid_email(argument0) {
    var email = argument0;

    // Check for exactly one '@' symbol
    if (string_count("@", email) != 1) {
        return false;
    }

    var atPos = string_pos("@", email);
    var localPart = string_copy(email, 1, atPos - 1);
    var domainPart = string_copy(email, atPos + 1, string_length(email) - atPos);

    // Local part and domain part should not be empty
    if (string_length(localPart) == 0 || string_length(domainPart) == 0) {
        return false;
    }

    // Local part and domain part should not start or end with a dot, and should not have consecutive dots
    if (string_char_at(localPart, 1) == "." || string_char_at(localPart, string_length(localPart)) == "." || 
        string_char_at(domainPart, 1) == "." || string_char_at(domainPart, string_length(domainPart)) == "." || 
        string_pos("..", localPart) > 0 || string_pos("..", domainPart) > 0) {
        return false;
    }

    // Check if domain part contains at least one dot
    if (string_count(".", domainPart) < 1) {
        return false;
    }

    // Create a list of valid characters
    var validChars = ds_list_create();
     ds_list_add(validChars, "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", 
                "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
                "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", 
                "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
                "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ".", "_", "-", "@");

    // Check each character of the email for validity
    for (var i = 1; i <= string_length(email); i++) {
        var char = string_char_at(email, i);
        if (ds_list_find_index(validChars, char) == -1) {
            ds_list_destroy(validChars);
            return false;
        }
    }

    ds_list_destroy(validChars);
    return true;
}