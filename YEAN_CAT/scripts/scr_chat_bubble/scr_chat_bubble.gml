/// @function scr_chat_bubble(Text, owner, [choices])
/// @param {string} _text - The text to show in the chat bubble
/// @param {string} _ownerName - The owner object name it will follow
/// @param {array} [_choices] - Optional array of choices, each choice is an array [text, actionName]
function scr_chat_bubble(argument0, argument1, argument2 = []) {
    var _text = string(argument0);
    var _ownerName = string(argument1);
    var _choices = argument2;
    var _owner = asset_get_index(_ownerName);

    if (object_exists(_owner)) {
        var ownerInstance = instance_find(_owner, 0);

        with (obj_chat_bubble) {
            if (owner == ownerInstance) {
                instance_destroy();
            }
        }

        var bubble = instance_create_layer(ownerInstance.x, ownerInstance.y - 60, "uii", obj_chat_bubble);
        bubble._text = _text;
        bubble.owner = ownerInstance;

        bubble.choice_count = array_length(_choices);
        bubble.choices = _choices;

        handleDebugMessage("Chat Bubble Created. Following '" + _ownerName + "' with text: '" + _text + "' and " + string(bubble.choice_count) + " choices", true);
    } else {
        handleDebugMessage("Error: Owner object '" + _ownerName + "' not found", true);
    }
}