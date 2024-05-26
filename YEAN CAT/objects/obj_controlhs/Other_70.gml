// Async Social event of obj_controlhs
if master.spawnthings == 1 and !instance_exists(restar) {
    exit;
}

if (ds_exists(async_load, ds_type_map) && async_load[? "status"] == 200) {
    switch (async_load[? "type"]) {
        case "FirebaseFirestore_Collection_Query":
            if (ds_map_exists(async_load, "value")) {
                var _doc = async_load[? "value"];
                var _data = json_parse(_doc);
                var _names = variable_struct_get_names(_data);
               
                for (var iii = 0; iii < array_length(_names); iii++) {
                    var name = _names[iii];
                    var temp_doc = variable_struct_get(_data, name);
                    temp_doc.id = name;

                    // Ensure global.data is always an array before attempting to use it
                    if (typeof(global.data) != "array") {
                        global.data = [];
                    }

                    // Check if this entry already exists in global.data
                    var exists = false;
                    for (var j = 0; j < array_length(global.data); j++) {
                        if (global.data[j].playerid == temp_doc.playerid) {
                            exists = true;
                            break;
                        }
                    }

                    // If it doesn't exist, add it
                    if (!exists) {
                        array_push(global.data, temp_doc);
                    }
                }
            }
            break;
      
        case "FirebaseFirestore_Document_Update":
            // Handle document update (if necessary for your game logic)
            break;

        case "FirebaseFirestore_Collection_Listener":
            // Re-query the Firestore collection to refresh data
            if (global.refreshData) {
                FirebaseFirestore(root).Query();
                global.refreshData = false;  // Reset after query
            }
            break;
    }
}


//// Async Social event of obj_controlhs

//if master.spawnthings=1 and !instance_exists(restar) {
//    exit;
//}

//if (async_load[? "status"] == 200) {
//    switch (async_load[? "type"]) {
//        case "FirebaseFirestore_Collection_Query":
//            var data = [];
//            if global.data == -1 {
//                global.data = data;
//            }
//            global._doc = async_load[? "value"];
//            var _data = json_parse(global._doc);
//            var _names = variable_struct_get_names(_data);
           
//            for (var iii = 0; iii < array_length(_names); iii++) {
//                var temp_doc = variable_struct_get(_data, _names[iii]);
//                temp_doc.id = _names[iii];

//                // Check if this entry already exists in global.data
//                var exists = false;
//                for (var j = 0; j < array_length(global.data); j++) {
//                    if (global.data[j].playerid == temp_doc.playerid) {
//                        exists = true;
//                        break;
//                    }
//                }

//                // If it doesn't exist, add it
//                if (!exists) {
//                    array_push(global.data, temp_doc);
//                }
//            }
//            break;
      
//        case "FirebaseFirestore_Document_Update":
//            // Handle document update (if necessary for your game logic)
//            break;

//        case "FirebaseFirestore_Collection_Listener":
//            // Re-query the Firestore collection to refresh data
//            FirebaseFirestore(root).Query();
//            break;
//    }
//}


