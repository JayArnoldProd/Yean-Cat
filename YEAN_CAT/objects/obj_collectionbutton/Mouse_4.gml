/// @description Insert description here
// You can write your code in this editor
col=c_ltgrey
if instance_exists(obj_unlockmenu) {
	if obj_unlockmenu.freezescroll=0 {
	obj_unlockmenu.menuselectt=2
	if obj_unlockmenu.menuselect!=2 {
	obj_unlockmenu.swapmenu=1
	exit
	} else {
		obj_unlockmenu.swapmenu=1
	obj_unlockmenu.menuselectt=0
	}
	}
}

click=audio_play_sound_on(myEmitter,uibuttonsound6,0,0,1*master.uivol*master.mastervol,0,.5+.5*(hover/255))