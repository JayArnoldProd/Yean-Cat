/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_unlockmenu) {
	



if typee=1 {
		if obj_unlockmenu.menuselect=1 {
			if obj_unlockmenu.freezescroll=0 {
if valuee>0 {
	valuee-=.01
} else {
	valuee=0
}
obj_unlockmenu.slidingtasks=1
obj_unlockmenu.taskselectvalue=valuee
	}
		}
}
if typee=2 {
		if obj_unlockmenu.menuselect=2 {
			obj_unlockmenu.colsel=-1
			obj_unlockmenu.swapcol=1
if valuee>0 {
	valuee-=.01
} else {
	valuee=0
}
	obj_unlockmenu.collectscrollvalue=valuee
	}
	
}
}