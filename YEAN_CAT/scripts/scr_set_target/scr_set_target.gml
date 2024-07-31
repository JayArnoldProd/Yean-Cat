/// @function scr_set_target(target)
/// @param {string/real} target - Instance ID or reference name of the target
function scr_set_target(target) {
    if (is_string(target)) {
        var obj = get_object_reference(target);
        if (obj != noone) {
            global.currentTarget = obj;
            var message = "Target set to " + target + " (" + object_get_name(obj.object_index) + ")";
            handleDebugMessage(message, false);
            return message;
        } else {
            var error_message = "Invalid target reference: " + target;
            handleDebugMessage(error_message, false);
            return error_message;
        }
    } else if (instance_exists(target)) {
        global.currentTarget = target;
        var message = "Target set to instance " + string(target) + " (" + object_get_name(target.object_index) + ")";
        handleDebugMessage(message, false);
        return message;
    } else {
        var error_message = "Invalid target instance ID: " + string(target);
        handleDebugMessage(error_message, false);
        return error_message;
    }
}