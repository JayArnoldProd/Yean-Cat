// Permissions check function
function check_permission(requiredLevel) {
    if (master.permissions < requiredLevel) {
        var levelNames = ["Player", "Moderator", "Developer", "Owner"];
        handleDebugMessage("You must be a " + levelNames[requiredLevel] + " to use that command.", false);
        return false;
    }
    return true;
}