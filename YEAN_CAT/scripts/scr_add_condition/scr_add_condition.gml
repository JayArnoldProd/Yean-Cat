/// @function scr_add_condition(name, leftOperand, operator, rightOperand)
/// @param {string} name - The name of the condition
/// @param {string} leftOperand - The left operand (variable name, string, number, or condition name)
/// @param {string} operator - The comparison operator (>, <, =, !=, >=, <=, and, or)
/// @param {string} rightOperand - The right operand (variable name, string, number, or condition name)
function scr_add_condition(conditionName, leftOperand, operator, rightOperand) {
    var conditionData = {
        leftOperand: leftOperand,
        operator: operator,
        rightOperand: rightOperand
    };
    ds_map_set(global.conditions, conditionName, conditionData);
    handleDebugMessage("Condition '" + conditionName + "' added successfully.", false);
    save_conditions();
}