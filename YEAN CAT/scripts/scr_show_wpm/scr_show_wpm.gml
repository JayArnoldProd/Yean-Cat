/// scr_show_wpm()
/// @description Shows the current Words Per Minute in the chat
function scr_show_wpm() {
    var wpmMessage = "Current WPM: " + string(master.wpm);
    handleDebugMessage(wpmMessage, true);  // Using handleDebugMessage to display in chat
}
