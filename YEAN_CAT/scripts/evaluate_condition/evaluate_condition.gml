function evaluate_condition(conditionName) {
    handleDebugMessage("Evaluating condition: " + conditionName, true);
    if (ds_map_exists(global.conditions, conditionName)) {
        var conditionData = ds_map_find_value(global.conditions, conditionName);
        
        handleDebugMessage("Condition data: " + json_stringify(conditionData), true);
        
        if (conditionData.operator == "and") {
            var leftResult = evaluate_condition(conditionData.leftOperand);
            var rightResult = evaluate_condition(conditionData.rightOperand);
            handleDebugMessage("AND condition: " + string(leftResult) + " AND " + string(rightResult), true);
            return leftResult && rightResult;
        } else if (conditionData.operator == "or") {
            var leftResult = evaluate_condition(conditionData.leftOperand);
            var rightResult = evaluate_condition(conditionData.rightOperand);
            handleDebugMessage("OR condition: " + string(leftResult) + " OR " + string(rightResult), true);
            return leftResult || rightResult;
        } else {
            var leftValue = get_variable_value(conditionData.leftOperand);
            var rightValue = get_variable_value(conditionData.rightOperand);
            var operator = conditionData.operator;
            handleDebugMessage("Left value: " + string(leftValue) + ", Right value: " + string(rightValue), true);
            return compare_values(leftValue, operator, rightValue);
        }
    } else {
        handleDebugMessage("Condition '" + conditionName + "' not found.", true);
        return false;
    }
}