

if instance_exists(obj_unlockmenu) {
	if obj_unlockmenu.menuselect=1 {
	x=obj_unlockmenu.x+obj_unlockmenu.swapx-777
	y=obj_unlockmenu.y+77
	} else {
		x=0
		y=0
	}
	} else {
	instance_destroy();
}
if audio_emitter_exists(myEmitter) {
audio_emitter_position(myEmitter,x,y,0)
}
image_index=enabled
if load=0 {
	if abcd=0 {
	enabled=master.hidecompletedunlocks
	}
	if instance_exists(obj_unlockmenu) {
	obj_unlockmenu.sorting=enabled
	}
	load=1
}

if abcd=0 {
	text="Hide Completed Tasks"
	master.hidecompletedunlocks=enabled
}


