/// @description Insert description here
// You can write your code in this editor
if instance_exists(master) {
if master.stemplay=1 {
var bk1 = instance_create_layer(room_width/2+1920/2*master.camscale,room_height/2-695*master.camscale/2,"stars",bar);
var bk2 = instance_create_layer(room_width/2+1920/2*master.camscale,room_height/2-250*master.camscale/2,"stars",bar);
var bk3 = instance_create_layer(room_width/2+1920/2*master.camscale,room_height/2+250*master.camscale/2,"stars",bar);
var bk4 = instance_create_layer(room_width/2+1920/2*master.camscale,room_height/2+695*master.camscale/2,"stars",bar);
lastnote1 = bk1
lastnote2 = bk2
lastnote3 = bk3
lastnote4 = bk4
lastkey=5
recbeat=1
}
}