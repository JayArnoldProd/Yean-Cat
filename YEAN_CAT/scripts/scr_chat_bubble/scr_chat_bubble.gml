/// @function scr_chat_bubble(Text, owner, [choices])
/// @param {string} _text - The text to show in the chat bubble
/// @param {string} _ownerName - The owner object name it will follow
/// @param {array} [_choices] - Optional array of choices, each choice is an array [text, actionName]
function scr_chat_bubble(_text, _ownerName, _choices = []) {
   handleDebugMessage("Raw chat_bubble parameters: " + string(_text) + ", " + string(_ownerName) + ", " + json_stringify(_choices), true);
    
    if (is_array(_text) && array_length(_text) >= 3) {
        _choices = _text[2];
        _ownerName = _text[1];
        _text = _text[0];
    }


    // Remove quotes from _ownerName if present
    _ownerName = string_replace_all(_ownerName, "\"", "");

    handleDebugMessage("Creating chat bubble with text: " + string(_text) + ", owner: " + string(_ownerName) + ", choices: " + json_stringify(_choices), true);

    var _owner = asset_get_index(_ownerName);

    if (!object_exists(_owner)) {
        handleDebugMessage("Error: Owner object '" + string(_ownerName) + "' not found", true);
        return;
    }

    var ownerInstance = instance_find(_owner, 0);
    if (ownerInstance == noone) {
        handleDebugMessage("Error: No instances of owner object '" + string(_ownerName) + "' found", true);
        return;
    }

    with (obj_chat_bubble) {
        if (owner == ownerInstance) {
            instance_destroy();
        }
    }

    var bubble = instance_create_layer(ownerInstance.x, ownerInstance.y - 60, "uii", obj_chat_bubble);
    with (bubble) {
        text = _text;
        wrapped_text = "";
        owner = ownerInstance;
        wrapped = 0;
        choices = _choices;
    }

    handleDebugMessage("Chat Bubble Created. Following '" + string(_ownerName) + "' with text: '" + string(_text) + "'", true);
}