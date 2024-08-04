function compare_values(left, operator, right) {
    handleDebugMessage("Comparing: " + string(left) + " " + operator + " " + string(right), true);
    
    // Handle undefined values
    if (is_undefined(left) || is_undefined(right)) {
        handleDebugMessage("Error: Undefined value in comparison", true);
        return false;
    }

    // Ensure both values are of the same type (convert to string if necessary)
    if (is_string(left) || is_string(right)) {
        left = string(left);
        right = string(right);
    } else {
        left = real(left);
        right = real(right);
    }

    switch (operator) {
        case "=":
        case "==": return left == right;
        case "!=":
        case "<>": return left != right;
        case "<": return left < right;
        case "<=": return left <= right;
        case ">": return left > right;
        case ">=": return left >= right;
        default:
            handleDebugMessage("Unknown operator: " + operator, true);
            return false;
    }
}