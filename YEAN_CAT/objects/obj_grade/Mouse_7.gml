/// @description Insert description here
// You can write your code in this editor
if obj_upgrademenu.selected=idd {
	obj_upgrademenu.selected=-1
} else {
	obj_upgrademenu.dfade=0
	if master.notice[idd,0] = 1 {
		if master.notice[idd,1] = 0 {
			unlock=1
		}
		if master.notice[idd,1] = 1 {
			unlock=2
			obj_upgrademenu.upgrades[idd,0]=1
		}
	}
	if master.notice[idd,0] = 2 {
	if master.notice[idd,1] = 1 {
		unlock=2
		obj_upgrademenu.upgrades[idd,0]=1
	}
	}
	with (obj_grade) {
		scale=1.4
	}
	scale=1.6
obj_upgrademenu.selected=idd
}
//} else {
//	
//}