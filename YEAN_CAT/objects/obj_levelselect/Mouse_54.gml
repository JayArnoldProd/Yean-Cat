/// @description Insert description here
// You can write your code in this editor
if os_type=os_ios or os_type=os_android {
if dontpause=0 {
if master.mainmenu=1 {
	start=0
	if instance_exists(obj_begin) {
		obj_begin.start=0
	}
	if !instance_exists(obj_start) {
onscreen=0;
	instance_create_layer(room_width, room_height/2-50, "uii", obj_start);
	instance_create_layer(room_width, room_height/2+125, "uii", obj_upgrade);
	instance_create_layer(room_width, room_height/2+300, "uii", obj_unlock);
	instance_create_layer(room_width, room_height/2-350, "uiitop", obj_logo);
	}
}
}
}