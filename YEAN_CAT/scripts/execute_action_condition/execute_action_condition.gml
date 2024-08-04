function execute_action_condition(actionConditionData) {
    handleDebugMessage("Executing action condition with data: " + json_stringify(actionConditionData), true);
    var conditionResult = evaluate_condition(actionConditionData.condition);
    handleDebugMessage("Action condition result: " + string(conditionResult), true);
    if (conditionResult) {
        handleDebugMessage("Executing true action: " + actionConditionData.trueAction, true);
        execute_command("execute_action(" + actionConditionData.trueAction + ")");
    } else {
        handleDebugMessage("Executing false action: " + actionConditionData.falseAction, true);
        execute_command("execute_action(" + actionConditionData.falseAction + ")");
    }
}