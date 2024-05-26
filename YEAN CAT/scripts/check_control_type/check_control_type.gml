// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_control_type(){
global.control_type=1
if (gamepad_is_connected(0)) {
    var gpad_desc = gamepad_get_description(0);
	
	if gpad_desc = "PS5 Controller" {
		global.control_type = 2
	}
	if gpad_desc = "Xbox Wireless Controller" {
		global.control_type = 3
	}
	if gpad_desc = "Nintendo Switch Pro Controller" {
		global.control_type = 4
	}
        
}
}

//make always random button behave right (needs to grow when mouse enters.