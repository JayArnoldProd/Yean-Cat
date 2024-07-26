function scr_goto_planet(_id) {
    var planetId = -1;
    
    if (is_array(_id) && array_length(_id) > 0) {
        _id = _id[0];
    }
    
    if (is_undefined(_id)) {
        handleDebugMessage("Error: Planet ID is undefined", true);
        return;
    }
    
    _id = string(_id);
	
    if (is_string(_id)) {
        // Try to parse as JSON, if it fails, use the string as is
        try {
            _id = json_parse(_id);
        } catch(e) {
            // If parsing fails, just use the string as is
        }
    }
    
    // If _id is still an array after parsing, take the first element
    if (is_array(_id) && array_length(_id) > 0) {
        _id = _id[0];
    }
    
    _id = string(_id);
    
    // Rest of the function remains the same
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
        for (var i = 0; i < array_length(obj_terrain.planets); i++) {
            if (string_lower(string(obj_terrain.planet_names[i, 0])) == string_lower(_id)) {
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