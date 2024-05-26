/// @description Insert description here
// You can write your code in this editor
if start=0 {
	exit;
}

if input_check_pressed("pause") {
	if global.pause=0 {
	global.pause=1
} else {
	global.pause=0
}

    if global.pause
    {
        audio_pause_sync_group(sg);
    }
    else
    {
        audio_resume_sync_group(sg);
    }
}

if stems_loaded=false {
	exit
}

if instance_exists(obj_levelup) {
	if obj_levelup.stopped=0 {
	audio_pause_sync_group(sg);
	audio_pause_all();
	obj_levelup.stopped=1
	}
	exit
} else {
	if instance_exists(obj_pickupq) {
	if obj_pickupq.stopped=0 {
	audio_pause_sync_group(sg);
	audio_pause_all();
	obj_pickupq.stopped=1
	}
	exit
} else {
	if global.pause=1 {
	audio_pause_sync_group(sg);
	audio_pause_all();
	exit
} else {
	if !audio_sync_group_is_playing(sg) {
		audio_resume_sync_group(sg);
	}
	audio_resume_all();
}
}
}

//mixaudio
if stemtime>0 and lower = 0 {
if bassvol=1 {
	audio_sound_gain(sound1, .5, 0);
	audio_group_set_gain(agBass,.7,0);
} else {
	audio_sound_gain(sound1, 0, 0);
	audio_group_set_gain(agBass,0,0);
}
if drumvol=1 {
	audio_sound_gain(sound2, .5, 0);
	audio_group_set_gain(agDrums,.7,0);
} else {
	audio_sound_gain(sound2, 0, 0);
	audio_group_set_gain(agDrums,0,0);
}
if melodyvol=1 {
	audio_sound_gain(sound3, .5, 0);
	audio_group_set_gain(agMelodies,.7,0);
} else {
	audio_sound_gain(sound3, 0, 0);
	audio_group_set_gain(agMelodies,0,0);
}
if vocalvol=1 {
	audio_sound_gain(sound4, .5, 0);
	audio_group_set_gain(agVocals,.7,0);
} else {
	audio_sound_gain(sound4, 0, 0);
	audio_group_set_gain(agVocals,0,0);
}
audio_sound_gain(music, 0, 0);
audio_group_set_gain(agMusic,0,0);
} else {
audio_sound_gain(sound1, 0, 0);
audio_sound_gain(sound2, 0, 0);
audio_sound_gain(sound3, 0, 0);
audio_sound_gain(sound4, 0, 0);
audio_sound_gain(music, .6*mastervol*musicvol, 0);
audio_group_set_gain(agMusic, .6*mastervol*musicvol, 0);
audio_group_set_gain(agBass,0,0);
audio_group_set_gain(agDrums,0,0);
audio_group_set_gain(agMelodies,0,0);
audio_group_set_gain(agVocals,0,0);
}
audio_group_set_gain(agMusic, .6*mastervol*musicvol, 0);

if !instance_exists(obj_boss) {
camera_set_view_pos(cam,960-960*(camscale-1), 540-540*(camscale-1))
camera_set_view_size(cam,1920*camscale,1080*camscale)
}

if camscale<2 {
	var lambda = -log10(-0.1 / (0 - 1)) / 1913;
    
    // Calculate x(t)
    var scaleup = 1 + (0 - 1) * exp(-lambda * ti);
	
	camscale=1+scaleup
}

if xp>=xpto {
	xp-=xpto
	level++
	//audio_play_sound(levelupsound,1,0)
	xpto=ceil(round(xpto+1)*1.02)
}

//update keys
if donda3=0 {
	key=0
} else {
	//F#Major/EbMinor
//key=0
//GMajor/EMinor
//key=1
//G#Major/FMinor
//key=2
//AMajor/F#Minor
//key=3
//A#Major/GMinor
//key=4
//BMajor/G#Minor
//key=5
//CMajor/AMinor
//key=6
//DbMajor/A#Minor
//key=7
//DMajor/BMinor
//key=8
//EbMajor/CMinor
//key=9
//EMajor/C#Minor
//key=10
//FMajor/DMinor
//key=11
//glory
if second=0 and minute=0 and hour=0 {
	key=0
}
//cancelled
if second=14 and minute=1 and hour=0 {
	key=8
}
if second=22 and minute=1 and hour=0 {
	key=1
}
if second=27 and minute=2 and hour=0 {
	key=8
}
//waterintodrank
if second=40 and minute=4 and hour=0 {
	key=1
}
if second=47 and minute=5 and hour=0 {
	key=0
}
if second=12 and minute=6 and hour=0 {
	key=1
}
//winterscold
if second=28 and minute=7 and hour=0 {
	key=11
}
//freeingchrist
if second=46 and minute=9 and hour=0 {
	key=8
}
//majestic
if second=59 and minute=12 and hour=0 {
	key=11
}
//ellayel
if second=9 and minute=14 and hour=0 {
	key=6
}
//heartaches808s
if second=14 and minute=16 and hour=0 {
	key=6
}
//glides to this key
if second=30 and minute=16 and hour=0 {
	key=9
}
//lucille
if second=46 and minute=18 and hour=0 {
	key=9
}
//yeealittle
if second=56 and minute=20 and hour=0 {
	key=8
}
if second=44 and minute=22 and hour=0 {
	key=3
}
//chasingghosts
if second=05 and minute=24 and hour=0 {
	key=6
}
//40years
if second=20 and minute=26 and hour=0 {
	key=8
}
if second=24 and minute=27 and hour=0 {
	key=3
}
if second=0 and minute=28 and hour=0 {
	key=8
}
//praisegod
if second=37 and minute=28 and hour=0 {
	key=5
}
if second=31 and minute=29 and hour=0 {
	key=8
}
if second=37 and minute=29 and hour=0 {
	key=3
}
if second=53 and minute=29 and hour=0 {
	key=10
}
//intheend
if second=25 and minute=30 and hour=0 {
	key=4
}
if second=44 and minute=31 and hour=0 {
	key=5
}
if second=52 and minute=31 and hour=0 {
	key=6
}
//gradually declines to this
if second=23 and minute=32 and hour=0 {
	key=3
}
if second=24 and minute=32 and hour=0 {
	key=8
}
if second=29 and minute=32 and hour=0 {
	key=2
}
if second=09 and minute=33 and hour=0 {
	key=3
}
}

//update spawntable
//0object, 
//1spawning?, 
//2size (1 normal), 
//3resistance (none,0-1,invincible), 
//4damage (1 normal),
//5speed (1 normal)
//6xp
//7rarity 1=100%, 5=20%, 10=10%, 20=5%, 100=1%
//8bonushealth


if ti<=59 {
	mob = [
		[ghost,1,1,0,1,1,1,1],
		[stardavid,0,1,0,1,1,1,2],
		[razziA,0,1,0,1,.5,1,1]
	];
} else {
if ti<=119 {
	mob = [
		[ghost,1,1,0,1,1.1,1.2,2],
		[stardavid,1,1,0,1,1.1,1.2,1],
		[razziA,0,1,0,1,.5,1,1]
	];
} else {
if ti<=179 {
	mob = [
		[ghost,1,1,.1,2,1.2,2,2],
		[stardavid,1,1,.1,2,1,2,1],
		[razziA,1,1,.1,1,.5,2,8]
	];
} else {
	mob = [
		[ghost,1,1.5,.3,2,1.4,2,2],
		[stardavid,1,1.5,.3,2,1.3,2,1],
		[razziA,1,1.5,.3,1.5,.5,2,8]
	];
}
}
}
if hour*3600+minute*60+second >= 2013 {
if instance_exists(yeancat) {
if (delta_second > 0) {
	
  delta_second -= delta_time * 0.9905;
  
  if (delta_second <= 0) {
	delta_second = 1000000-(0-delta_second);
	second+=1;
	ti+=1
	if stemplay=1 {
		if stemtime>0 {
			stemtime-=1
		} else {
			stemplay=0
		}
	}
  }
} else {

}
}
} else {
	tiprev=ti
	ti=floor(audio_sync_group_get_track_pos(sg))
	if tiprev!=ti {
		if stemplay=1 {
		if stemtime>0 {
			stemtime-=1
		} else {
			stemplay=0
		}
	}
	}
}

if !instance_exists(yeancat) {
	lower+=2
}


if hour*3600+minute*60+second >= 2013 {
if second>59 {
	minute+=1
	second=0
}

if minute>59 {
	hour+=1
	minute=0
}
}


if donda3=1 {
	if hour*3600+minute*60+second < 2013 {
	if audio_sync_group_is_playing(sg) {
	var posi = floor(audio_sync_group_get_track_pos(sg))
if posi != hour*3600+minute*60+second {
	var time_values = seconds_to_time(posi);

hour = time_values[2];
minute = time_values[1];
second = time_values[0];
}
	}
}
}

time+=.01
starfreq-=1 
mobfreq-=1 
foodfreq-=1
//if starfreq=round(starfreqset/2) {
//	instance_create_layer(2200,1040 * sin(time) + 540,"stars",star)
//}
if starfreq<0 {
	instance_create_layer(room_width/2+1920*master.camscale/2+300,room_height/2+(random(1080*master.camscale)-1080*master.camscale/2),"stars",star)
	starfreq=round((starfreqset+random(starfreqset/4))/(sqr(speedd/10)))
}

if spawnthings=true {

if foodfreq<0 {
	if random(100)<foodchance {
	instance_create_layer(room_width/2+1920*master.camscale/2+300,room_height/2+(random(1080*master.camscale)-1080*master.camscale/2),"player",bigmac)
	}
	foodfreq=round((foodfreqset+random(foodfreqset/4))/(sqr((speedd+20)/30)))
}

if mobfreq<0 {
	var enemypool = 0
	for (i=0; i<array_length(mob);i++) {
		if mob[i,1]=1 {
			//count enemy spawn total
			enemypool+=1
		}
	}
		//select random number in total
		var enemyroll=1+round(random(enemypool-1));
		
	for (i=0; i<array_length(mob);i++) {
		if mob[i,1]=1 {
			enemyroll-=1
			if enemyroll = 0 {
				if clamp(round(random(mob[i,7])),1,2)=1 {
					if instance_exists(yeancat) {
				var enem = instance_create_layer(room_width/2+1920*master.camscale/2+300,yeancat.y+(random(1080*master.camscale)-1080*master.camscale/2)*(clamp(2-(yeancat.x-(room_width/2-(1920/2)*camscale))/((1920/2)*camscale),1,2)),"player",mob[i,0])
					} else {
						var enem = instance_create_layer(room_width/2+1920*master.camscale/2+300,room_height/2+(random(1080*master.camscale)-1080*master.camscale/2),"player",mob[i,0])
					}
				//0object, 1spawning?, 2size (1 normal), 3resistance (none,0-1,invincible), 4damage (1 normal),5speed (1 normal)
				enem.spd=mob[i,5]
				enem.damage=mob[i,4]
				enem.resistance=mob[i,3]
				enem.sizee=mob[i,2]
				enem.xp=mob[i,6]
				break
				} else {
					enemyroll=1+round(random(enemypool-1));
					i=0
				}
				
			}
		}
	}
	//if random(2) <1 {
	//instance_create_layer(room_width/2+1920*master.camscale/2+300,random(room_height+300)-150,"player",ghost)
	//} else {
	//	instance_create_layer(room_width/2+1920*master.camscale/2+300,random(room_height+300)-150,"player",stardavid)
	//}

	
	mobfreq=round((mobfreqset+random(mobfreqset/4))/(sqr((speedd+20)/30)))
}


if second=0 and minute % 3 = 0  and minute != 0 {
	if spawnitem=0 {
		if instance_exists(yeancat) {
		if yeancat.shade<1 {
		instance_create_layer(room_width/2+1920*master.camscale/2+300,room_height/2+((random(1080*master.camscale)-1080*master.camscale/2))*.5,"player",shades)
		}
		}
		spawnitem=1
	}
} else {
	if second=1 and minute % 3 = 0 {
		spawnitem=0
	}
}
if minute > 0 {
	//if round(random(10000))<5{
	//	if instance_exists(yeancat) {
	//	if !instance_exists(defcon) and yeancat.def=0 {
	//	instance_create_layer(room_width/2+1920*master.camscale/2+300,room_height/2+((random(1080*master.camscale)-1080*master.camscale/2))*.75,"player",defcon)
	//	}
	//	}
	//}
	if minute > 1 {
	if round(random(10000))<3{
		if instance_exists(yeancat) {
		if !instance_exists(stemplayer) and master.stemplay=0 {
		instance_create_layer(room_width/2+1920*master.camscale/2+300,room_height/2+((random(1080*master.camscale)-1080*master.camscale/2))*.75,"player",stemplayer)
		}
		}
	}
	}
}

}

//music
//if stems_loaded=true {
if startmusic=0 {
if donda3=0 {
	if !audio_is_playing(music) {
	music = audio_play_sound(musicintro,0,0,.7*master.musicvol*master.mastervol)
	}
	startmusic=1
} else {
	music = audio_play_sound(track1,0,0,.7*master.musicvol*master.mastervol);
audio_play_in_sync_group(sg, sound1);
audio_play_in_sync_group(sg, sound2);
audio_play_in_sync_group(sg, sound3);
audio_play_in_sync_group(sg, sound4);
audio_sound_gain(sound1, 0, 0);
audio_sound_gain(sound2, 0, 0);
audio_sound_gain(sound3, 0, 0);
audio_sound_gain(sound4, 0, 0);
audio_start_sync_group(sg);
	startmusic=1
	track=2

}
} else {

if donda3=0 {
if !audio_is_playing(music) and loop=0 {
	music = audio_play_sound(yeancat_music_loop,0,1,.7*master.musicvol*master.mastervol);
	loop=1
}
} else {
	if !audio_is_playing(music) {
	if track=1 {
music = audio_play_sound(track1,0,0,.7*master.musicvol*master.mastervol);
audio_play_in_sync_group(sg, sound1);
audio_play_in_sync_group(sg, sound2);
audio_play_in_sync_group(sg, sound3);
audio_play_in_sync_group(sg, sound4);
audio_sound_gain(sound1, 0, 0);
audio_sound_gain(sound2, 0, 0);
audio_sound_gain(sound3, 0, 0);
audio_sound_gain(sound4, 0, 0);
audio_start_sync_group(sg);
		track+=1
		exit
		}
	if track=2 {
		music = audio_play_sound(cancelled,0,0);
		track+=1
		exit
	}
	if track=3 {
		music = audio_play_sound(waterintodrank,0,0);
		track+=1
		exit
	}
	if track=4 {
		music = audio_play_sound(winterscold,0,0);
		track+=1
		exit
	}
	if track=5 {
		music = audio_play_sound(freeingchrist,0,0);
		track+=1
		exit
	}
	if track=6 {
		music = audio_play_sound(majestic,0,0);
		track+=1
		exit
	}
	if track=7 {
		music = audio_play_sound(ellayel,0,0);
		track+=1
		exit
	}
	if track=8 {
		music = audio_play_sound(heartache,0,0);
		track+=1
		exit
	}
	if track=9 {
		music = audio_play_sound(lucille,0,0);
		track+=1
		exit
	}
	if track=10 {
		music = audio_play_sound(yeealittle,0,0);
		track+=1
		exit
	}
	if track=11 {
		music = audio_play_sound(chasingghosts,0,0);
		track+=1
		exit
	}
	if track=12 {
		music = audio_play_sound(fourtyyears,0,0);
		track+=1
		exit
	}
	if track=13 {
		music = audio_play_sound(praisegod,0,0);
		track+=1
		exit
	}
	if track=14 {
		music = audio_play_sound(intheend,0,0);
		track=1
		exit
	}
}
}
}

speedd=10*(1+ti/1000)

if key=0 {
	keypitch=1
}
if key<=5 and key != 0 {
	keypitch=1*power(1.059463,key)
} else {
	keypitch=1*power(1.059463,-12+key)
}

if audio_is_playing(soundscream) {
audio_sound_pitch(soundscream,1*(1-master.lower/1000))
}

//pitching
if audio_is_playing(music) {
if donda3=0 {
//audio_sound_pitch_bpm(music,_bpm,4)
} else {
	if ti < 2013 {
	//audio_sound_pitch(music,1*(1-lower/1000))
	} else {
		//audio_sound_pitch(music,(ti/2013)*(1-lower/1000))
	}
}
}
//}

//always on
if record=1 {
	stemplay=1
	stemtime=100
}