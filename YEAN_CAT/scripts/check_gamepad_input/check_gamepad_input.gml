/// @description Checks for gamepad input and logs it to the chat console
function check_gamepad_input() {
    if (!global.inputDisplayEnabled) return;

for (var i = gp_face1; i < gp_axisrv; i++) {
        if (input_gamepad_check_pressed(0, i)) {
            handleDebugMessage("Gamepad button pressed: " + string(i), true);
            break;  // Stop checking after the first pressed button is found
        }
    }
}