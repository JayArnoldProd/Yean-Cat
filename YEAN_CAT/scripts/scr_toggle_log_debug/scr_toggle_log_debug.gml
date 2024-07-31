// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_toggle_log_debug(){
global.logDebugMessagesToFile = !global.logDebugMessagesToFile;
handleDebugMessage("Log debug messages to file toggled: " + string(global.logDebugMessagesToFile), false);
}