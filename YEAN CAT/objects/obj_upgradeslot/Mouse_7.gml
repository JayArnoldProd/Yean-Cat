/// @description Insert description here
// You can write your code in this editor
			if master.maxweapset < 6 {
if master.dondadollars>=cost {
	master.dondadollars-=cost
	master.maxweapset+=1
	master.maxweapons+=1
	scr_calculate_spent()
	audio_play_sound_on(myEmitter,uibuttonsound5,0,0,1*master.uivol*master.mastervol)
} else {
audio_play_sound_on(myEmitter,cantdothat1,0,0,1*master.uivol*master.mastervol)
}

}


if master.dondadollars<cost {
	col=c_red
}
if master.maxweapset = 6 {
	col=c_gray
}