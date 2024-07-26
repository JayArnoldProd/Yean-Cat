function are_brackets_balanced(str) {
    var stack = ds_stack_create();
    var in_string = false;
    for (var i = 1; i <= string_length(str); i++) {
        var char = string_char_at(str, i);
        if (char == "\"" && string_char_at(str, i - 1) != "\\") {
            in_string = !in_string;
        }
        if (!in_string) {
            if (char == "(" || char == "[") {
                ds_stack_push(stack, char);
            } else if (char == ")" || char == "]") {
                if (ds_stack_empty(stack)) {
                    ds_stack_destroy(stack);
                    return false;
                }
                var top = ds_stack_pop(stack);
                if ((char == ")" && top != "(") || (char == "]" && top != "[")) {
                    ds_stack_destroy(stack);
                    return false;
                }
            }
        }
    }
    var balanced = ds_stack_empty(stack);
    ds_stack_destroy(stack);
    return balanced;
}