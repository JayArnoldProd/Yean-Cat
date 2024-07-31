/// @function scr_return_controller()
/// @description Outputs the connected gamepad description or a message if none are connected
function scr_return_controller() {
    if (gamepad_is_connected(0)) {
        var gpad_desc = gamepad_get_description(0);
        handleDebugMessage("Connected gamepad: " + gpad_desc, false);
    } else {
        handleDebugMessage("No gamepad detected.", false);
    }
}