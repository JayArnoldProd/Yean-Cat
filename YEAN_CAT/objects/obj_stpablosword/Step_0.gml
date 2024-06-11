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
atk+=ratee*.001
atkosc=(1 * sin(1 * pi * (atk)))

if atkosc<.25 {
	swing=0
}
if atkosc>.5 {
	if swing=0 {
		{
	var pick = choose(1,2,3,4)
	var sndpick= nothingsound
	if pick=1 {
		sndpick=sound1
	}
	if pick=2 {
		sndpick=sound2
	}
	if pick=3 {
		sndpick=sound3
	}
	if pick=4 {
		sndpick=sound4
	}
	atksnd=audio_play_sound_on(myEmitter,sndpick,0,0,.5+clamp(damage/200,0,.5)-random(10)/100,0,1.6*ratee/20+random(30)/100)
}
	swing=1
	}
}


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
if instance_exists(enemy){
	target=instance_nearest(x,y,enemy)
}
if instance_exists(obj_boss){
	target=instance_nearest(x,y,obj_boss)
}
if instance_exists(target) {
	if facing=1 {
angle=point_direction(x,y,target.x,target.y)-90+oscil*5
	} else {
angle=point_direction(x,y,target.x,target.y)-90+oscil*5	
	}
}
if image_angle != angle {
	image_angle+=shortestAngularDistance(image_angle,angle)/15
}

if instance_exists(yeancat) {
	facing=yeancat.facing
}
orbitangle+=facing*(projectilespeed/2)*master.projectilespeed*yeancat.oxyspeed


var ttx=0
var tty=0
if instance_exists(target) and instance_exists(yeancat) {
	ttx= yeancat.x+lengthdir_x(200*range*master.range,point_direction(yeancat.x,yeancat.y,target.x,target.y))
	tty= yeancat.y+lengthdir_y(200*range*master.range,point_direction(yeancat.x,yeancat.y,target.x,target.y))
}
tx=(tx*10+ttx)/11
ty=(ty*10+tty)/11
x=(yeancat.x+lengthdir_x(150*(range+oscil)*master.range,orbitangle))*(1-atkosc)+(atkosc)*tx
y=(yeancat.y+lengthdir_y(150*(range+oscil)*master.range,orbitangle))*(1-atkosc)+(atkosc)*ty
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
	projectilespeed*=1.5
}
if master.weapons[wid,4] = 3 {
	range*=1.25
	projectilesize*=1.25
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
	projectilesize*=1.25
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
image_xscale=projectilesize
image_yscale=image_xscale

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
