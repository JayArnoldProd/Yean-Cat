/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_unlockmenu) {
	if typee = 1 {
	if obj_unlockmenu.menuselect=1 {
	x=obj_unlockmenu.x+obj_unlockmenu.swapx-795
	y=obj_unlockmenu.y-175
	} else {
		x=0
		y=0
	}
	}
	if typee = 2 {
	if obj_unlockmenu.menuselect=2 {
	x=obj_unlockmenu.x+obj_unlockmenu.swapx-795
	y=obj_unlockmenu.y-75
	} else {
		x=0
		y=0
	}
	}


if rainpos<sprite_get_width(spr_sliderrainbowvert)/2 {
	rainpos+=(.1+.1*(typee/6))*2
} else {
	rainpos=0
}

if mouse_check_button_pressed(mb_left) {
	if obj_unlockmenu.freezescroll=0 {
	if point_in_circle(mouse_x,mouse_y,x,(y-lengthh/2+15)*((1-valuee)/1)+(y+lengthh/2-15)*(valuee/1),20) {
		grabbed=1
	}
	} else {
		grabbed=0
	}
}
if typee=1 {
	if obj_unlockmenu.menuselect=1 {
if grabbed=1 {
	valuee=clamp(.95*(mouse_y-y)/(lengthh)+.5,0,1)
	obj_unlockmenu.slidingtasks=1
	obj_unlockmenu.taskselectvalue=valuee
	obj_unlockmenu.colsel=-1
	obj_unlockmenu.swapcol=1

} else {
	if !mouse_wheel_up() and !mouse_wheel_down() {
	obj_unlockmenu.slidingtasks=0
	
	}
}
}
}
	
if typee = 2 {
	if obj_unlockmenu.menuselect=2 {
		if grabbed=1 {
			obj_unlockmenu.colsel=-1
			obj_unlockmenu.swapcol=1
	valuee=clamp(.95*(mouse_y-y)/(lengthh)+.5,0,1)
	obj_unlockmenu.collectscrollvalue=valuee

}
		
	}
}

//0=none
//1=MasterVol
//2=MusicVol
//3=SFX Vol
//4=Dialouge Vol
//5=UI Volume
//6=UI Scale
} else {
	instance_destroy();
}
