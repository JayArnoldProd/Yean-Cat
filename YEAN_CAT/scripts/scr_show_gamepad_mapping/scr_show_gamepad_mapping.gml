/// @function scr_show_gamepad_mapping()
/// @description Retrieves and logs the gamepad mapping
function scr_show_gamepad_mapping() {
    if (gamepad_is_connected(0)) {
        var mapping = gamepad_get_mapping(0);
        if (mapping != "") {
            handleDebugMessage("Gamepad mapping: " + mapping, true);
        } else {
            handleDebugMessage("No mapping available for the connected gamepad.", true);
        }
    } else {
        handleDebugMessage("No gamepad detected.", true);
    }
}