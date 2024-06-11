/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	exit
} else {
	rott-=rotation*2
	if rott>360 {
		rott-=360
	}
	if rott<0 {
		rott+=360
	}
		if walph<1 {
		var spdd=.2
		walph=walph+(1-walph)*spdd
		if walph>.99 {
			walph=1
		}
	}
}
if instance_exists(yeancat) {
	face=yeancat.facing

if wid != -1 {
level = master.weapons[wid,4]
}
c_wep=merge_color(c_white,c_att,attacktimer/(attacktimerset*1000000/(master.clone+amount)))
attacktimer-=delta_time*global.room_speed_set/60
if attacktimer <= 0 {
	if iiii<master.clone+amount {
			for (jj=0; jj<=ratemult; jj++) {
	var tweet=instance_create_layer(x,y,"projectiles",projectile)
	var mul=.66
	tweet.chak=chaksel
	chaksel+=1
	if chaksel >7 {
		chaksel=1
	}
	tweet.damage=damage*master.damage*yeancat.oxydamage*yeancat.stemdamage
	tweet.projectilespeed=projectilespeed*master.projectilespeed*yeancat.oxyspeed*mul
	tweet.projectilesize=projectilesize
	tweet.range=range*master.range
	tweet.orbitspeed=rotation
	tweet.criticalchance=criticalchance*master.criticalchance
	tweet.duration=duration*master.duration
	tweet.decaytimerset=duration*master.duration
tweet.decaytimer=(duration*master.duration)*1000000
	tweet.ratee=4/ratee
	tweet.directionn=0+360/(master.clone+1+amount)*iiii+360/(ratemult+1)*jj
	tweet.penetrate=penetrate
			}
	iiii+=1
	} else {
		iiii=0
	}
	//seconds
	var rage=1
	//if instance_exists(yeancat) {
		//rage=.5+yeancat.rage/20
		///20
	//}
	attacktimerset=((ratee/master.attackrate)/master.rhythm)
	if attacktimerset*1000000<delta_time*global.room_speed_set/60 {
		ratemult=clamp(floor((delta_time*global.room_speed_set/60)/(attacktimerset*1000000)-1),0,5)
	}
	attacktimer=attacktimerset*1000000/(master.clone+amount)+attacktimer
	var gun = round(random(2))

if gun = 0 {
	gunsnd=audio_play_sound_on(s_emit,s1,0,0);
}
if gun = 1 {
	gunsnd=audio_play_sound_on(s_emit,s2,0,0);
}
if gun = 2 {
	gunsnd=audio_play_sound_on(s_emit,s3,0,0);
}
audio_sound_gain(gunsnd,1*master.mastervol*master.sfxvol,0);
}

if instance_exists(yeancat) {
	if awbh = 0 {
		depth=yeancat.depth-1*face*dept
	} else {
		depth=yeancat.depth+1
	}
x=yeancat.x
y=yeancat.y
} else {
	instance_destroy()
}

if levellast<level {
	levellast=level
	boost=1
}
//if !instance_exists(obj_levelup) {
if boost=1 {
if master.weapons[wid,4] = 2 {
	range*=1.1
	rotation*=1.25
}
if master.weapons[wid,4] = 3 {
	duration*=1.25
	rotation*=1.1
}
if master.weapons[wid,4] = 4 {
	ratee*=.9
	
}
if master.weapons[wid,4] = 5 {
	damage*=1.25
	duration*=1.25
}
if master.weapons[wid,4] = 6 {
	
	rotation*=1.25
}
if master.weapons[wid,4] = 7 {
	ratee*=.9
	
}
if master.weapons[wid,4] = 8 {
	damage*=1.5
}
if master.weapons[wid,4] = 9 {
	
	rotation*=1.5
}
if master.weapons[wid,4] = 10 {
	range*=1.25                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
}

if master.weapons[wid,4] > 10 {
	if master.limitchosen=1 {
		ratee*=.99
	
	}
	if master.limitchosen=2 {
		damage*=1.02
	}
	if master.limitchosen=3 {
		rotation*=1.01
	}
	if master.limitchosen=4 {
		duration*=1.01
	}
	if master.limitchosen!=-1 {
		master.limitchosen=-1
	}
	
}
boost=0
}
//}
}

//xp pitching
if master.donda3=0 {
audio_sound_pitch(gunsnd,master.keypitch*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
//audio_emitter_pitch(s_emit,1*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
} else {
	if master.ti < 2013 {
	audio_sound_pitch(gunsnd,master.keypitch*1*(1-master.lower/1000)*global.room_speed_set/60)
	
	} else {
		audio_sound_pitch(gunsnd,master.keypitch*(master.ti/2013)*(1-master.lower/1000)*global.room_speed_set/60)
		
	}
}
