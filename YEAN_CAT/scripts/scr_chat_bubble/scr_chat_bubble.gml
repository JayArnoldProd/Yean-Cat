/// @function scr_chat_bubble(Text, owner)
/// @param {string} _text - The text to show in the chat bubble
/// @param {string} _ownerName - The owner object name it will follow
function scr_chat_bubble(argument0, argument1) {
    var _text = string(argument0);  // Ensure _text is a string
    var _ownerName = string(argument1);  // Ensure owner name is a string
    var _owner = asset_get_index(_ownerName);

    // Validate owner object
    if (object_exists(_owner)) {
        var ownerInstance = instance_find(_owner, 0);

        // Destroy other chat bubbles owned by the same instance
        with (obj_chat_bubble) {
            if (owner == ownerInstance) {
                instance_destroy();
            }
        }

        // Create the chat bubble
        var bubble = instance_create_layer(ownerInstance.x, ownerInstance.y - 60, "uii", obj_chat_bubble);
        bubble._text = _text;
        bubble.owner = ownerInstance;

        // Log success message to chat
        if global.bubble_send_to_log == 1 {
            handleDebugMessage("Chat Bubble Created. Following '" + _ownerName + "' with text: '" + _text + "'", true);
        }
    } else {
        // Log error message to chat
        if global.bubble_send_to_log == 1 {
            handleDebugMessage("Error: Owner object '" + _ownerName + "' not found", true);
        }
    }
    global.bubble_send_to_log = 1;
}

