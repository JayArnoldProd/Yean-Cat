/// @function scr_list_action_groups()
/// @description Lists all action groups with line breaks
function scr_list_action_groups() {
    var groups = ds_list_create();
    
    var key = ds_map_find_first(global.actionDetails);
    while (!is_undefined(key)) {
        var encodedData = ds_map_find_value(global.actionDetails, key);
        var decodedData = json_parse(base64_decode(encodedData));
        
        if (is_struct(decodedData) && variable_struct_exists(decodedData, "type") && decodedData.type == "action_group") {
            ds_list_add(groups, key);
        }
        
        key = ds_map_find_next(global.actionDetails, key);
    }

    if (ds_list_size(groups) == 0) {
        handleDebugMessage("No action groups found.", false);
        ds_list_destroy(groups);
        return;
    }

    ds_list_sort(groups, true);

    var groupsList = "Action Groups: ";
    var currentLine = groupsList;
    var maxLineLength = 70; // Maximum characters per line

    for (var i = 0; i < ds_list_size(groups); i++) {
        var group = ds_list_find_value(groups, i) + (i < ds_list_size(groups) - 1 ? ", " : "");

        if (string_length(currentLine) + string_length(group) > maxLineLength) {
            handleDebugMessage(currentLine, false);
            currentLine = group;
        } else {
            currentLine += group;
        }
    }

    if (string_length(currentLine) > 0) {
        handleDebugMessage(currentLine, false);
    }

    ds_list_destroy(groups);
}