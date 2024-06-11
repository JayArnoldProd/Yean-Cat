//custom function for moving left or right one planet.

function scr_jump_planet(direction_) {
	var p_name = ""
	var c_plan=obj_terrain.planet
if direction_="right" or direction_="clockwise" or direction_="cw" or direction_="r" or direction_=1 {
//move 1 planet clockwise
if obj_terrain.planet<13 {
	obj_terrain.planet+=1
	obj_terrain2.planet=obj_terrain.planet
	obj_terrain.systemposition=obj_terrain.planets[obj_terrain.planet,0]
	if obj_terrain.planet_names[obj_terrain.planet,3] = "" {
	p_name=obj_terrain.planet_names[obj_terrain.planet,0]
	} else {
		p_name=obj_terrain.planet_names[obj_terrain.planet,3]
	}
	handleDebugMessage("Jumped 1 Planet Right. Welcome to "+p_name, true)
} else {
	obj_terrain.planet=0
	obj_terrain2.planet=obj_terrain.planet
	obj_terrain.systemposition=obj_terrain.planets[obj_terrain.planet,0]
	if obj_terrain.planet_names[obj_terrain.planet,3] = "" {
	p_name=obj_terrain.planet_names[obj_terrain.planet,0]
	} else {
		p_name=obj_terrain.planet_names[obj_terrain.planet,3]
	}
	handleDebugMessage("Jumped 1 Planet Right. Welcome to "+p_name, true)
}
} else {
//move 1 planet counterclockwise
if direction_= "left" or direction_="counter-clockwise" or direction_="counterclockwise" or direction_="ccw" or direction_="l" or direction_=-1 {
if obj_terrain.planet>0 {
	obj_terrain.planet-=1
	obj_terrain2.planet=obj_terrain.planet
	obj_terrain.systemposition=obj_terrain.planets[obj_terrain.planet,0]
	if obj_terrain.planet_names[obj_terrain.planet,3] = "" {
	p_name=obj_terrain.planet_names[obj_terrain.planet,0]
	} else {
		p_name=obj_terrain.planet_names[obj_terrain.planet,3]
	}
	handleDebugMessage("Jumped 1 Planet Left. Welcome to "+p_name, true)
} else {
	obj_terrain.planet=13
	obj_terrain2.planet=obj_terrain.planet
	obj_terrain.systemposition=obj_terrain.planets[obj_terrain.planet,0]
	if obj_terrain.planet_names[obj_terrain.planet,3] = "" {
	p_name=obj_terrain.planet_names[obj_terrain.planet,0]
	} else {
		p_name=obj_terrain.planet_names[obj_terrain.planet,3]
	}

	handleDebugMessage("Jumped 1 Planet Left. Welcome to "+p_name, true)
}
} else {
	handleDebugMessage("Invalid Direction. (Try: r/l,right/left,clockwise/counterclockwise,cw/ccw,1/-1)", true)
	}
}
}
