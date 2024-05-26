/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_unlockmenu) {
	if obj_unlockmenu.menuselect=2 {
	x=obj_unlockmenu.x+obj_unlockmenu.swapx-245
	y=obj_unlockmenu.y+279
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
	enabled=master.hidelockedcol
	}
	if instance_exists(obj_unlockmenu) {
	obj_unlockmenu.sortingcol=enabled
	}
	load=1
}

if abcd=0 {
	text="Hide Locked Items"
	master.hidelockedcol=enabled
}


