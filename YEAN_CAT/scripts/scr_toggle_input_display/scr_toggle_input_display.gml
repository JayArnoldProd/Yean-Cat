/// @function scr_toggle_input_display()
/// @description Toggles the display of gamepad inputs in the chat log
function scr_toggle_input_display() {
    global.inputDisplayEnabled = !global.inputDisplayEnabled;
    var status = global.inputDisplayEnabled ? "enabled" : "disabled";
    handleDebugMessage("Gamepad input display is now " + status + ".", true);
}