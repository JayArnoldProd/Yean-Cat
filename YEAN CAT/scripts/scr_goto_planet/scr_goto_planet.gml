function scr_goto_planet(_id) {
    var planetId = -1;

    if (string_is_real(_id)) {
        var numericId = real(_id);
        if (numericId >= 0 && numericId < array_length(obj_terrain.planets)) {
            planetId = numericId;
        } else {
            var mes = "Invalid Planet ID: " + string(numericId);
            handleDebugMessage(mes, true);
            return;
        }
    } else {
		//find planet id based on name
        for (var i = 0; i < array_length(obj_terrain.planets); i++) {
            if (string(obj_terrain.planet_names[i, 0]) == _id) {
                planetId = i;
                break;
            }
        }
        if (planetId == -1) {
            var mes = "Invalid Planet Name: " + _id;
            handleDebugMessage(mes, true);
            return;
        }
    }

    obj_terrain.planet = planetId;
    obj_terrain2.planet = planetId;
    obj_terrain.systemposition = obj_terrain.planets[planetId, 0];
    var p_name = obj_terrain.planet_names[planetId, 0];
    var mes = "Teleported to " + p_name + ".";
    handleDebugMessage(mes, true);
}



