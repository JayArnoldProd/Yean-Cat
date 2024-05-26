function scr_set_my_permission(newPermission) {
    var permissionValues = ds_map_create();
    ds_map_add(permissionValues, "0", 0);
    ds_map_add(permissionValues, "Player", 0);
    ds_map_add(permissionValues, "p", 0);
    ds_map_add(permissionValues, "1", 1);
    ds_map_add(permissionValues, "Moderator", 1);
    ds_map_add(permissionValues, "m", 1);
    ds_map_add(permissionValues, "2", 2);
    ds_map_add(permissionValues, "Dev", 2);
    ds_map_add(permissionValues, "d", 2);
    ds_map_add(permissionValues, "3", 3);
    ds_map_add(permissionValues, "Owner", 3);
    ds_map_add(permissionValues, "o", 3);

    if (ds_map_exists(permissionValues, string(newPermission))) {
        var actualPermission = ds_map_find_value(permissionValues, string(newPermission));
        master.permissions = actualPermission;
        var levelNames = ["Player", "Moderator", "Developer", "Owner"];
        handleDebugMessage("Permission level set to " + levelNames[actualPermission], true);
    } else {
        handleDebugMessage("Invalid permission level: " + newPermission, true);
    }
    ds_map_destroy(permissionValues);
}