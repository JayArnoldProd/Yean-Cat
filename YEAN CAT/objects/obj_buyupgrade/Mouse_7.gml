/// @description Insert description here
// You can write your code in this editor
if fade=1 {
	if instance_exists(obj_upgrademenu) {
		if obj_upgrademenu.selected !=-1 {
			if obj_upgrademenu.upgrades[obj_upgrademenu.selected,1] < obj_upgrademenu.upgrades[obj_upgrademenu.selected,2] {
if master.dondadollars>=cost {
	master.dondadollars-=cost
	master.notice[obj_upgrademenu.selected,2]+=1
	obj_upgrademenu.upgrades[obj_upgrademenu.selected,1]+=1
	master.upgradetot+=1
	master.updatestats=1
	scr_calculate_spent()
	master.updatetext=1
	audio_play_sound_on(myEmitter,uibuttonsound5,0,0,1*master.uivol*master.mastervol)
} else {
audio_play_sound_on(myEmitter,cantdothat1,0,0,1*master.uivol*master.mastervol)
}
}
}
}
}

if master.dondadollars<cost+5 {
	col=c_red
}
if obj_upgrademenu.upgrades[obj_upgrademenu.selected,1] >= obj_upgrademenu.upgrades[obj_upgrademenu.selected,2] {
	col=c_gray
}