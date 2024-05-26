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
	damage*=2
}
if master.weapons[wid,4] = 3 {
	amount+=1
}
if master.weapons[wid,4] = 4 {
	ratee*=.9
	projectilespeed*=1.5
}
if master.weapons[wid,4] = 5 {
	penetrate+=1
	duration*=1
}
if master.weapons[wid,4] = 6 {
	damage*=2
}
if master.weapons[wid,4] = 7 {
	amount+=1
}
if master.weapons[wid,4] = 8 {
	ratee*=.85
	//projectilespeed*=1.5
}
if master.weapons[wid,4] = 9 {
	projectilesize*=1.5
}
if master.weapons[wid,4] = 10 {
	damage*=2
}
if master.weapons[wid,4] > 10 {
	if master.limitchosen=1 {
		ratee*=.99
	
	}
	if master.limitchosen=2 {
		damage*=1.02
	}
	if master.limitchosen=3 {
		penetrate+=1
		duration=(durationset)
		
	}
	if master.limitchosen=4 {
		amount=amount+1
	}
	if master.limitchosen!=-1 {
		master.limitchosen=-1
	}
	
}
boost=0
}
//}
}
