/// @description Insert description here
// You can write your code in this editor


if fade=1 {
	if instance_exists(obj_upgrademenu) {
		if obj_upgrademenu.selected !=-1 {
			if obj_upgrademenu.upgrades[obj_upgrademenu.selected,1] < obj_upgrademenu.upgrades[obj_upgrademenu.selected,2] {
if master.dondadollars>=cost {
} else {
	audio_play_sound_on(myEmitter,cantdothat1,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
}
			} else {
				audio_play_sound_on(myEmitter,cantdothat1,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
			}
		}
	}
}