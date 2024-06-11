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
if instance_exists(yeancat) {
	//face=yeancat.facing

if wid != -1 {
level = master.weapons[wid,4]
}
c_wep=c_white

if instance_exists(yeancat) {
	if awbh = 0 {
		depth=yeancat.depth-1*face*dept
	} else {
		depth=yeancat.depth+1
	}
	
//projectilespeed=1
//projectilesize=1
//orbitangle=0
//range=1
//oscrange=.1
if oscdir=1 {
	if oscil<oscrange {
		oscil+=ratee*.001
	} else {
		oscdir=-1
	}
} else {
	if oscil>-oscrange {
		oscil-=ratee*.001
	} else {
		oscdir=1
	}
}
if instance_exists(yeancat.facing) {
	facing=yeancat.facing
}
orbitangle+=(projectilespeed/2)*master.projectilespeed*yeancat.oxyspeed
	
x=yeancat.x+lengthdir_x((50+150*(range*(1+oscil)))*master.range,orbitangle)
y=yeancat.y+lengthdir_y((50+150*(range*(1+oscil)))*master.range,orbitangle)
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
	projectilespeed*=1.25
}
if master.weapons[wid,4] = 3 {
	range*=1.25
	projectilesize*=1.5
}
if master.weapons[wid,4] = 4 {
	ratee*=1.5
	oscrange*=2
}
if master.weapons[wid,4] = 5 {
	damage*=2
}
if master.weapons[wid,4] = 6 {
	range*=1.25
	projectilespeed*=1.5
}
if master.weapons[wid,4] = 7 {
	ratee*=1.5
	oscrange*=2
}
if master.weapons[wid,4] = 8 {
	damage*=2
}
if master.weapons[wid,4] = 9 {
	range*=1.25
	projectilesize*=1.5
}
if master.weapons[wid,4] = 10 {
	damage*=3
}
if master.weapons[wid,4] > 10 {
	if master.limitchosen=1 {
		projectilespeed*=1.02
	
	}
	if master.limitchosen=2 {
		damage*=1.02
	}
	if master.limitchosen=3 {
		projectilesize*=1.01
	}
	if master.limitchosen=4 {
		oscrange*=1.02
	}
	if master.limitchosen!=-1 {
		master.limitchosen=-1
	}
	
}
boost=0
}
//}
}
image_xscale=projectilesize*master.range
image_yscale=image_xscale
image_angle+=projectilespeed/30

if audio_emitter_exists(myEmitter) {
	audio_emitter_position(myEmitter,x,y,0)
}
//pitching
	if audio_is_playing(soundd) {
		audio_sound_gain(soundd,clamp(.25+image_xscale/4,0,1)*master.sfxvol*master.mastervol,0)
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
	soundd=audio_play_sound_on(myEmitter,snd_moon1,0,0,1*master.sfxvol*master.mastervol,0,1)
}