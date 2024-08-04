function scr_add_action_condition(actionConditionName, condition, trueAction, falseAction) {
    var actionConditionData = {
        condition: condition,
        trueAction: trueAction,
        falseAction: falseAction
    };
    ds_map_set(global.actionConditions, actionConditionName, actionConditionData);
    handleDebugMessage("Action condition '" + actionConditionName + "' added with data: " + json_stringify(actionConditionData), false);
    save_action_conditions();
}