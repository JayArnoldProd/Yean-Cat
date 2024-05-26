/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	exit
} else {
		if walph<1 {
		var spdd=.2
		walph=walph+(1-walph)*spdd
		if walph>.99 {
			walph=1
		}
	}
}
	//face=yeancat.facing

if wid != -1 {
level = master.weapons[wid,4]
}
c_wep=c_white

if instance_exists(yeancat) {
	{
		depth=yeancat.depth+1
	}
	
//projectilespeed=1
//projectilesize=1
//orbitangle=0
//range=1
//oscrange=.1
image_alpha=clamp(.05+damage/200,0,.95)
image_angle-=damage/50
time+=.05*ratee
glow=(0.5 * sin(2 * pi * (time) / 15) + 0.5)

if instance_exists(yeancat) {
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
	damage*=1.5
}
if master.weapons[wid,4] = 3 {
	range*=1.25
}
if master.weapons[wid,4] = 4 {
	damage*=1.5
}
if master.weapons[wid,4] = 5 {
	range*=1.25
}
if master.weapons[wid,4] = 6 {
	damage*=1.5
	//["Fantasy","+25% Damage","+25% Range","+25% Damage","+25% Range","+25% Damage","+25% Range","+25% Damage","+25% Range","+25% Damage",""],
}
if master.weapons[wid,4] = 7 {
	range*=1.25
}
if master.weapons[wid,4] = 8 {
	damage*=1.5
}
if master.weapons[wid,4] = 9 {
	range*=1.25
}
if master.weapons[wid,4] = 10 {
	damage*=1.5
}
if master.weapons[wid,4] > 10 {
	if master.limitchosen=1 {
		range*=1.02
	
	}
	if master.limitchosen=2 {
		damage*=1.02
	}
	if master.limitchosen=3 {
		damage*=1.01
	}
	if master.limitchosen=4 {
		range*=1.01
	}
	if master.limitchosen!=-1 {
		master.limitchosen=-1
	}
	
}
boost=0
}
//}
}
image_xscale=range*master.range/2
image_yscale=image_xscale

//xp pitching
	if audio_is_playing(soundd) {
		audio_sound_gain(soundd,glow*clamp(.25+image_xscale/4,0,1)*master.sfxvol*master.mastervol,0)
if master.donda3=0 {

		audio_sound_pitch(soundd,master.keypitch*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
} else {
	if master.ti < 2013 {
		
	audio_sound_pitch(soundd,master.keypitch*1*(1-master.lower/1000)*global.room_speed_set/60)
	
	
	} else {
	audio_sound_pitch(soundd,master.keypitch*(master.ti/2013)*(1-master.lower/1000)*global.room_speed_set/60)
	
		
	}
	}
} else {
	soundd=audio_play_sound_on(myEmitter,snd_fantasy1,0,0,1*master.sfxvol*master.mastervol,0,1)
}
