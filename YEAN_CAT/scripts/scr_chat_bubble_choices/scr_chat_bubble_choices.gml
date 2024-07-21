function scr_chat_bubble_choices() {
    var text = argument[0];
    var owner = argument[1];
    var choices = [];
    for (var i = 2; i < argument_count; i += 2) {
        array_push(choices, [argument[i], argument[i+1]]);
    }
    scr_chat_bubble(text, owner, choices);
}