/// @description Insert description here
// You can write your code in this editor



//collectibles
//name,1state, 2amount collected, 3amount til next,4enabled,5upgradeprice,6level,7seen,i8mage, 9can disable, 10item id, 11image_index, 12unlocks what, 13 requirement(s) 14text color, 15object type, 16 rarity, 17variant, 18 good or bad, 19 in shop? 
//if master.collection[itemidd,1]!=2 {
//master.collection[itemidd,1]=2
//master.collection[itemidd,7]=-2
//}

if variant=0 {
	with (master) {
		audio_stop_sound(music)
		music=audio_play_sound_on(music_emitter,glory,0,0)
	}
}
if variant=1 {
	with (master) {
		audio_stop_sound(music)
		music=audio_play_sound_on(music_emitter,cancelled,0,0)
	}
}
if variant=2 {
	with (master) {
		audio_stop_sound(music)
		music=audio_play_sound_on(music_emitter,waterintodrank,0,0)
	}
}
if variant=3 {
	with (master) {
		audio_stop_sound(music)
		music=audio_play_sound_on(music_emitter,winterscold,0,0)
	}
}
if variant=4 {
	with (master) {
		audio_stop_sound(music)
		music=audio_play_sound_on(music_emitter,freeingchrist,0,0)
	}
}
if variant=5 {
	with (master) {
		audio_stop_sound(music)
		music=audio_play_sound_on(music_emitter,majestic,0,0)
	}
}
if variant=6 {
	with (master) {
		audio_stop_sound(music)
		music=audio_play_sound_on(music_emitter,ellayel,0,0)
	}
}
if variant=7 {
	with (master) {
		audio_stop_sound(music)
		music=audio_play_sound_on(music_emitter,heartache,0,0)
	}
}
if variant=8 {
	with (master) {
		audio_stop_sound(music)
		music=audio_play_sound_on(music_emitter,lucille,0,0)
	}
}
if variant=9 {
	with (master) {
		audio_stop_sound(music)
		music=audio_play_sound_on(music_emitter,yeealittle,0,0)
	}
}
if variant=10 {
	with (master) {
		audio_stop_sound(music)
		music=audio_play_sound_on(music_emitter,chasingghosts,0,0)
	}
}
if variant=11 {
	with (master) {
		audio_stop_sound(music)
		music=audio_play_sound_on(music_emitter,fourtyyears,0,0)
	}
}
if variant=12 {
	with (master) {
		audio_stop_sound(music)
		music=audio_play_sound_on(music_emitter,praisegod,0,0)
	}
}
if variant=13 {
	with (master) {
		audio_stop_sound(music)
		music=audio_play_sound_on(music_emitter,intheend,0,0)
	}
}

instance_destroy()
