/// @function scr_chat_bubble(text, owner, [choices])
/// @param {string} _text - The text to show in the chat bubble
/// @param {string} _ownerName - The owner object name it will follow
/// @param {array} [_choices] - Optional array of choices, each choice is an array [text, actionName]
function scr_chat_bubble(text, owner, choices) {
    handleDebugMessage("Creating chat bubble: " + json_stringify(text) + ", Owner: " + string(owner) + ", Choices: " + json_stringify(choices), true);

    var ownerObject = noone;
    
    if (owner == "Target") {
        ownerObject = global.currentTarget;
    } else if (owner == "Player" || owner == "yeancat") {
        ownerObject = yeancat; // Assuming yeancat is the actual player object
    } else {
        ownerObject = asset_get_index(owner);
    }

    if (!instance_exists(ownerObject)) {
        handleDebugMessage("Owner object not found, using yeancat", true);
        ownerObject = yeancat; // Fallback to player object
    }

    // Destroy existing chat bubbles with the same owner
    with (obj_chat_bubble) {
        if (self.owner == ownerObject) {
            instance_destroy();
        }
    }

    // Create new chat bubble using constructor
    var bubble = instance_create_layer(ownerObject.x, ownerObject.y - 60, "uii", obj_chat_bubble, {
        text: is_array(text) && array_length(text) > 1 ? string(text[0]) : (is_string(text) ? text : string(text)),
        choices: is_array(text) && array_length(text) > 1 ? text[1] : (is_array(choices) ? choices : []),
        owner: ownerObject
    });

    if (bubble != noone) {
        handleDebugMessage("Chat Bubble Created. Following '" + object_get_name(ownerObject.object_index) + 
                           "' with text: '" + bubble.text + "'. Number of choices: " + string(array_length(bubble.choices)), true);
    } else {
        handleDebugMessage("Failed to create chat bubble instance", true);
    }
}