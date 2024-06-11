/// @description Insert description here
// You can write your code in this editor
if master.characters[master.charselect,0]=1 {
col=c_white
alarm[0]=10
obj_levelselect.alarm[0]=10
yeancat.positionplace=1
audio_play_sound(uibuttonsound6,0,0,.75*master.uivol*master.mastervol,0,.995+random(10)/1000)

master.spawnthings=1
with (master) {
for (i=0; i<array_length(weapons); i++) {
	diswep[i]=weapons[i,3]
	lockwep[i]=weapons[i,13]
	}
	for (i=0; i<array_length(items); i++) {
	disite[i]=items[i,3]
	}
	for (i=0; i<array_length(passives); i++) {
	dispas[i]=clamp(notice[i,0],0,1)
	lockpas[i]=clamp(notice[i,1],0,1)
	//passives[i,7]=lockpas[i]
	}
}
}