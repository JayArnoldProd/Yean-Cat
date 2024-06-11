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
image_speed=(ratee/5)*master.attackrate
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
if instance_exists(enemy) and instance_exists(yeancat) {
	tart=instance_nearest(x,y,enemy)
	tartd=(tartd*(projectilespeed/master.projectilespeed)+point_distance(yeancat.x,yeancat.y,tart.x,tart.y))/(projectilespeed/master.projectilespeed+1)
orbitangle=(orbitangle*(projectilespeed/master.projectilespeed)+point_direction(yeancat.x,yeancat.y,tart.x,tart.y))/(projectilespeed/master.projectilespeed+1)
}
if tartd!=noone {
x=yeancat.x+lengthdir_x(clamp(tartd,0,(100*range)*master.range),orbitangle)
y=yeancat.y+lengthdir_y(clamp(tartd,0,(100*range)*master.range),orbitangle)
}
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
	projectilespeed*=.9
}
if master.weapons[wid,4] = 3 {
	range*=1.25
	projectilesize*=1.5
}
if master.weapons[wid,4] = 4 {
	ratee*=1.5
}
if master.weapons[wid,4] = 5 {
	damage*=2
}
if master.weapons[wid,4] = 6 {
	range*=1.25
	projectilespeed*=.9
}
if master.weapons[wid,4] = 7 {
	ratee*=1.5
}
if master.weapons[wid,4] = 8 {
	damage*=1.5
}
if master.weapons[wid,4] = 9 {
	range*=1.25
	projectilesize*=1.5
}
if master.weapons[wid,4] = 10 {
	damage*=2
}
if master.weapons[wid,4] > 10 {
	if master.limitchosen=1 {
		projectilespeed*=.99
	
	}
	if master.limitchosen=2 {
		damage*=1.02
	}
	if master.limitchosen=3 {
		projectilesize*=1.01
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
image_xscale=projectilesize/2
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