function scr_add_chat_bubble_action(actionName, text, owner, choices) {
    var choicesArray = [];
    for (var i = 0; i < array_length(choices); i += 2) {
        array_push(choicesArray, [choices[i], choices[i+1]]);
    }
    
    scr_add_action(actionName, "chat_bubble", [text, owner, choicesArray]);
}