/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_nameplate) or master.playername=""  {
	exit
}
if instance_exists(alphamessage) {
	exit
}
if !instance_exists(obj_unlockmenu) {
	var lev = instance_create_layer(room_width, room_height/2, "uii", obj_unlockmenu);
col=c_white
alarm[0]=10
}