/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	if !instance_exists(restar) {
	x=xprevious
	y=yprevious
	speed=0
	exit
	}
	}  else {
		walph=clamp(.25+damage/20,0,.75)
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
	tweet.damage=damage*master.damage*yeancat.oxydamage*yeancat.stemdamage
	tweet.projectilespeed=projectilespeed*master.projectilespeed*yeancat.oxyspeed*mul
	tweet.projectilesize=projectilesize*master.projectilesize*mul
	tweet.range=range*master.range
	tweet.criticalchance=criticalchance*master.criticalchance
	tweet.duration=duration*master.duration
	tweet.ratee=ratee
	
	tweet.directionn=0+360/(master.clone+1+amount)*iiii+360/(ratemult+1)*jj
	tweet.decaytimerset=duration*master.duration
	tweet.decaytimer=(duration)*1000000*master.duration
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
	attacktimerset=((ratee/master.attackrate)/master.rhythm)/rage
	if attacktimerset*1000000<delta_time*global.room_speed_set/60 {
		ratemult=clamp(floor((delta_time*global.room_speed_set/60)/(attacktimerset*1000000)-1),0,5)
	}
	attacktimer=attacktimerset*1000000/(master.clone+amount)+attacktimer
	
}
image_alpha=(.5-abs(attacktimer/(attacktimerset*1000000)-.5))*2
image_xscale=clamp(.25+damage/20,0,.75)*(1/(sprite_get_height(sprite_index)/300)/2)*(.5-abs(attacktimer/(attacktimerset*1000000)-.5))*2
image_yscale=image_xscale

if audio_emitter_exists(myEmitter) {
			audio_emitter_position(myEmitter,x,y,0)
		}

if instance_exists(yeancat) {
	depth=yeancat.depth-1*face*dept
x=yeancat.x+holdpos*far*face+far*face*(dept+1)*abs(holdpos)/2+abs(dept-1)/2*face*far
y=yeancat.y+(0.5 * sin(2 * pi * yeancat.anicount / 5) + 0.5)*23*yeancat.scale
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
	projectilespeed*=1.33
}
if master.weapons[wid,4] = 3 {
	duration*=1.25
}
if master.weapons[wid,4] = 4 {
	ratee*=.9
}
if master.weapons[wid,4] = 5 {
	damage*=1.5
	projectilesize*=1.25
}
if master.weapons[wid,4] = 6 {
	//["Fire","+33% Fire Speed","+25% Duration","+50% Attack Rate","+50% Damage\n+25% Projectile Size","+25% Duration","+50% Rate","+33% Fire Speed","+50% Damage","+25% Size\n+25% Duration",""],
	duration*=1.25
}
if master.weapons[wid,4] = 7 {
	ratee*=.85
}
if master.weapons[wid,4] = 8 {
	projectilespeed*=1.33
}
if master.weapons[wid,4] = 9 {
	damage*=1.5
}
if master.weapons[wid,4] = 10 {
	projectilesize*=1.25
	duration*=1.25
}
if master.weapons[wid,4] > 10 {
	if master.limitchosen=1 {
		ratee*=.99
	
	}
	if master.limitchosen=2 {
		damage*=1.02
	}
	if master.limitchosen=3 {
		duration*=1.01
	}
	if master.limitchosen=4 {
		projectilespeed*=1.01
	}
	if master.limitchosen!=-1 {
		master.limitchosen=-1
	}
	
}
boost=0
}
//}
}

if audio_is_playing(soundd) {
	audio_sound_gain(soundd,(.5+(damage)/100)*master.sfxvol*master.mastervol,0)
		audio_sound_pitch(soundd,master.keypitch*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
		}