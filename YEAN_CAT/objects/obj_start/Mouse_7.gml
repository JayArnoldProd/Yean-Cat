/// @description Insert description here
// You can write your code in this editor
if instance_exists(alphamessage) {
	exit
}
if instance_exists(obj_nameplate) or master.playername=""  {
	exit
}
if !instance_exists(obj_levelselect) {
	var lev = instance_create_layer(room_width, room_height/2, "uii", obj_levelselect);
col=c_black
master.updatetext=1
master.updatestats=1
alarm[0]=10
}
if instance_exists(yeancat) {
	yeancat.healthh=yeancat.maxhealth
}