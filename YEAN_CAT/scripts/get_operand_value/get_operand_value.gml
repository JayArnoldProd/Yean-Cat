function get_operand_value(operand) {
    if (is_string(operand)) {
        if (variable_global_exists(operand)) {
            return variable_global_get(operand);
        } else if (variable_instance_exists(id, operand)) {
            return variable_instance_get(id, operand);
        } else {
            return operand; // Treat as a literal value if not a variable
        }
    }
    return operand; // Return as-is if not a string (e.g., number)
}

