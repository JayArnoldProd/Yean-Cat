function decode_action_parameters(encoded_params) {
    try {
        var decoded = base64_decode(encoded_params);
        handleDebugMessage("Decoded string: " + decoded, true);
        // Check if the decoded string is empty or just whitespace
        if (string_trim(decoded) == "") {
            handleDebugMessage("Decoded string is empty or whitespace", true);
            return [];
        }
        var parsed = json_parse(decoded);
        handleDebugMessage("Successfully decoded parameters: " + json_stringify(parsed), true);
        return parsed;
    } catch(e) {
        handleDebugMessage("Error decoding parameters: " + string(e) + ". Raw encoded data: " + encoded_params, true);
        // Return an empty array if decoding fails
        return [];
    }
}