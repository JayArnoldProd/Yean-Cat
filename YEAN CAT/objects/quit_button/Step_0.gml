/// @description Insert description here
// You can write your code in this editor
	x=camera_get_view_x(master.cam)+389+gwidth
	y=camera_get_view_y(master.cam)+75
	
	if master.mainmenu =1 {
		visible=1	
	} else {
			if instance_exists(obj_pausemenu) {
			visible=1
		} else {
			visible=0
		}
		}