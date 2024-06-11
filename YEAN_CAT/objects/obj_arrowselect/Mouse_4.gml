/// @description Insert description here
// You can write your code in this editor
if dir=0 {
	obj_levelselect.stage-=1
	var stagepick=obj_levelselect.stage
	for (i=0; i<array_length(master.stages); i++) {
		if master.stages[i,7]=1 {
			stagepick-=1
		}
		if stagepick=0 {
			obj_levelselect.leveltext=master.stages[i,0]
			obj_levelselect.leveldesc=master.stages[i,8]
			obj_levelselect.stageid=i
			audio_play_sound_on(myEmitter,uibuttonsound4,0,0,1*master.uivol*master.mastervol,0,.995+random(10)/1000)
		}
	}
} else {
	obj_levelselect.stage+=1
	var stagepick=obj_levelselect.stage
	for (i=0; i<array_length(master.stages); i++) {
		if master.stages[i,7]=1 {
			stagepick-=1
		}
		if stagepick=0 {
			obj_levelselect.leveltext=master.stages[i,0]
			obj_levelselect.leveldesc=master.stages[i,8]
			obj_levelselect.stageid=i
			audio_play_sound_on(myEmitter,uibuttonsound4,0,0,.75*master.uivol*master.mastervol,0,.995+random(10)/1000)
		}
	}
}