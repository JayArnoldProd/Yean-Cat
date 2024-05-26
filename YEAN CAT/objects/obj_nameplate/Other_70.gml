/// @description Insert description here
// You can write your code in this editor
//if (async_load[? "status"] == 200) {
//    switch (async_load[? "type"]) {
//        case "FirebaseFirestore_Collection_Query":
//			global.data = [];
			
//			global._doc = async_load[? "value"];
//			var _data = json_parse(global._doc);
//			var _names = variable_struct_get_names(_data);
			
//            var playerExists = false;
//            var playerDocId = "";
//            var playerData = json_parse(async_load[? "value"]);
            
//            // Checking if player exists
//            for (var i = 0; i < array_length(playerData); i++) {
//                var doc = playerData[i];
//                if (doc[? "playerid"] == master.playerid) {
//                    playerExists = true;
//                    playerDocId = doc[? "id"];  // Get the document ID
//                    break;
//                }
//            }
//			for (var iii = 0; iii < array_length(_names); iii++;)
//			{
//				global._doc = variable_struct_get(_data, _names[iii]);
//				global._doc.id = _names[iii];
//				array_push(global.data, global._doc);
//			}
            //// Calculate player's strongest character and combined level
            //var hcl = 0, hc = 0, cl = 0;
            //for (var dd = 0; dd < array_length(master.characters); dd++) {
            //    if (master.characters[dd, 0] == 1) {
            //        if (master.characters[dd, 2] > hcl) {
            //            hcl = master.characters[dd, 2];
            //            hc = dd;
            //        }
            //        cl += master.characters[dd, 2];
            //    }
            //}

            //// Prepare player data
            //var newPlayerData = {
            //    named: master.playername,
            //    kills: master.overallkills,
            //    highestlevel: master.recordlevel,
            //    combinedlevel: cl,
            //    playtime: master.playtime,
            //    strongestcharacter: hc,
            //    strongestlevel: hcl,
            //    longestgame: master.recordtime,
            //    mostkills: master.recordkill,
            //    playerid: master.playerid,
            //    playernumber: master.playernumber,
            //    email: master.email
            //};

            //// Update or Add player data
            //if (playerExists) {
            //    FirebaseFirestore(root + "/" + playerDocId).Update(json_stringify(newPlayerData));
            //} else {
            //    FirebaseFirestore(root).Set(json_stringify(newPlayerData)); // Use Set instead of Add
            //}
            //break;

//        case "FirebaseFirestore_Collection_Listener":
//            FirebaseFirestore(root).Query();
//            break;
//    }
//}
		

//if (async_load[? "status"] == 200) {
//    switch (async_load[? "type"]) {
//        case "FirebaseFirestore_Collection_Query":
//            var playerExists = false;
//            var playerDocId = "";

//            var response = async_load[? "value"];
//            var playerData = json_parse(response);
//			global.data = [];
			
//			global._doc = async_load[? "value"];
//			var _data = json_parse(global._doc);
//			var _names = variable_struct_get_names(_data);
			
//			for (var iii = 0; iii < array_length(_names); iii++;)
//			{
//				global._doc = variable_struct_get(_data, _names[iii]);
//				global._doc.id = _names[iii];
//				array_push(global.data, global._doc);
//			}
			
//			array_sort(global.data, sort_score);
			
            
//            // Loop through each document in the response
//            for (var i = 0; i < array_length(playerData); i++) {
//                var doc = playerData[i];
//                if (doc[? "playerid"] == master.playerid) {
//                    playerExists = true;
//                    playerDocId = doc[? "id"];  // Get the document ID
//                    break;
//                }
//            }
			

//            // Update or Add player data
//            if (playerExists) {
//                // Update existing player data
//                FirebaseFirestore(root + "/" + playerDocId).Update(json_stringify(playerData));
//            } else {
//                // Add new player data
//                FirebaseFirestore(root).Add(json_stringify(playerData));
//            }
//            break;
			
//		case "FirebaseFirestore_Collection_Listener":
//			FirebaseFirestore(root).Query();
//			break;
			
//    }
//}

//if async_load[? "status"] == 200
//{
//	switch (async_load[? "type"])
//	{
//		case "FirebaseFirestore_Collection_Listener":
//			FirebaseFirestore(root).Query();
//			break;
			
//		case "FirebaseFirestore_Collection_Query":
//			global.data = [];
			
//			global._doc = async_load[? "value"];
//			var _data = json_parse(global._doc);
//			var _names = variable_struct_get_names(_data);
			
//			for (var iii = 0; iii < array_length(_names); iii++;)
//			{
//				global._doc = variable_struct_get(_data, _names[iii]);
//				global._doc.id = _names[iii];
//				array_push(global.data, global._doc);
//			}
			
//			array_sort(global.data, sort_score);
//			break;
//	}
//}
		