/// @description Insert description here
// You can write your code in this editor
if hide=0 {
	if instance_exists(yeancat) {
if instance_exists(obj_start) and yeancat.positionplace!=1 {
obj_start.onscreen=0
obj_upgrade.onscreen=0
obj_unlock.onscreen=0
obj_logo.onscreen=0
} else {
	if instance_exists(obj_levelselect) {
		with (obj_levelselect) {
			onscreen=0
		}
	}
}


instance_create_layer(room_width, room_height/2, "uii", obj_statmenu);
hide=1
}
}