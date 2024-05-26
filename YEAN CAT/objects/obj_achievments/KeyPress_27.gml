/// @description Insert description here
// You can write your code in this editor

if master.mainmenu=1 {
	if !instance_exists(obj_start) {
onscreen=0;
audio_play_sound(exitpause1,0,0,.75*master.uivol*master.mastervol,0,.995+random(10)/1000)
	instance_create_layer(room_width, room_height/2-50, "uii", obj_start);
	instance_create_layer(room_width, room_height/2+125, "uii", obj_upgrade);
	instance_create_layer(room_width, room_height/2+300, "uii", obj_unlock);
	instance_create_layer(room_width, room_height/2-350, "uiitop", obj_logo);
	}
}