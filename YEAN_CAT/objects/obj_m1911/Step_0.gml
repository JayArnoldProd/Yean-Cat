/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	exit
} else {
	if recoil>0 {
		var roil = clamp((attacktimer-(attacktimerset*1000000/2))/(attacktimerset*1000000),.5,99999999)
		recoilshift=(.5-abs((sqrt(roil+.5)/2-.5)))*(1+(1-(1/(1+master.clone+amount))))*far*2
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
	//facing=yeancat.facing
	rotbot=0
	

if wid != -1 {
level = master.weapons[wid,4]
}

var startdirr=0
if attackaim=1 {
if instance_exists(enemy){
	target=instance_nearest(x,y,enemy)
}
if instance_exists(obj_boss){
	target=instance_nearest(x,y,obj_boss)
}
if instance_exists(target) {
	if facing=1 {
angle=point_direction(x,y,target.x+target._hspeed*3,target.y)
	} else {
angle=point_direction(x,y,target.x+target._hspeed*3,target.y)
	}
} else {
	instance_destroy()
}
if image_angle != angle {
	image_angle+=sign(shortestAngularDirection(image_angle,angle))*aimspeed*abs(shortestAngularDistance(image_angle,angle))/15
	if image_angle>360 {
		image_angle-=360
	}
	if image_angle<0 {
		image_angle+=360
	}
}
if image_angle<90 or image_angle >270 {
	facing=1
} else {
	facing=-1
}
}


attacktimer-=delta_time*global.room_speed_set/60
c_wep=merge_color(c_white,c_att,attacktimer/(attacktimerset*1000000))
if attacktimer <= 0 {
			for (var jj=0; jj<master.clone+amount; jj++) {
				var tweet = noone
				if attackorigin=0 {
					tweet=instance_create_layer(x,y,"projectiles",projectile)
				}
				if attackorigin=1 {
					if facing!=-1 {
					tweet=instance_create_layer(x+facing*(120 * cos(degtorad(image_angle))),y-facing*sin((image_angle) * pi / 180)*tipx-8,"player",projectile)
					} else {
					tweet=instance_create_layer(x-facing*(120 * cos(degtorad(image_angle))),y+facing*sin((image_angle) * pi / 180)*tipx-8,"player",projectile)

					}
				}
	var mul=1
	tweet.damage=damage*master.damage*yeancat.oxydamage*yeancat.stemdamage
	tweet.projectilespeed=projectilespeed*master.projectilespeed*yeancat.oxyspeed*mul
	tweet.projectilesize=projectilesize*master.projectilesize*mul
	tweet.range=range*master.range
	tweet.criticalchance=criticalchance*master.criticalchance
	tweet.duration=duration*master.duration
	tweet.ratee=ratee
	tweet.hit=penetrate+1
	if (master.clone+1+amount)<=1 {
		if attackaim=1 {
		if facing!=-1 {
			var hal=image_angle+.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((master.clone+amount-jj+1)/(master.clone+amount+1))-.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((jj+1)/(master.clone+amount+1))
		tweet.direction=hal
		} else {
			var hal= image_angle+.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((master.clone+amount-jj+1)/(master.clone+amount+1))-.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((jj+1)/(master.clone+amount+1))
		tweet.direction=hal
		tweet._vspeed=lengthdir_y(tweet.projectilespeed,hal)
		}
		}
	} else {

		if attackaim=1 {
			//aimamplitude
			//tweet.direction=startdir+(15/((master.clone+1+amount)/2))*(master.clone+1+amount)/2-(30/((master.clone+1+amount)/2))*((master.clone+amount)*jj)
		if facing!=-1 {
		tweet.direction=image_angle+.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((master.clone+amount-jj+1)/(master.clone+amount+1))-.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((jj+1)/(master.clone+amount+1))
		} else {
		tweet.direction=image_angle+.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((master.clone+amount-jj+1)/(master.clone+amount+1))-.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((jj+1)/(master.clone+amount+1))
			
		}
		}
	}
	tweet.decaytimerset=duration*master.duration
	tweet.decaytimer=(duration)*1000000*master.duration
	tweet.penetrate=penetrate
			}
	//seconds
	var rage=1
	//if instance_exists(yeancat) {
	//	rage=.5+yeancat.rage/20
		///20
	//}
	attacktimerset=((ratee/master.attackrate)/master.rhythm)/rage
	if attacktimerset*1000000<delta_time*global.room_speed_set/60 {
		ratemult=clamp(floor((delta_time*global.room_speed_set/60)/(attacktimerset*1000000)-1),0,5)
	}
	attacktimer=attacktimerset*1000000+attacktimer
var gun = round(random(2))

if gun = 0 {
	gunsnd=audio_play_sound(gun1,0,0);
}
if gun = 1 {
	gunsnd=audio_play_sound(gun2,0,0);
}
if gun = 2 {
	gunsnd=audio_play_sound(gun3,0,0);
}
audio_sound_gain(gunsnd,.6*master.mastervol*master.sfxvol,0);
}

if instance_exists(yeancat) {
depth=yeancat.depth-1
x=yeancat.x+lengthdir_x(recoilshift,image_angle+180)+holdpos*far*facing+far*facing*(dept+1)*abs(holdpos)/2+abs(dept-1)/2*facing*far
y=yeancat.y+lengthdir_y(far*2,image_angle)+(0.5 * sin(2 * pi * yeancat.anicount / 5) + 0.5)*23*yeancat.scale-10
} else {
	instance_destroy()
}

if levellast<level {
	levellast=level
	boost=1
}
//if !instance_exists(obj_levelup) {
//["M1911","+50% Fire Rate","+50% Damage\n+50% Aim Speed","+50% Fire Rate","+1 Penetration","+50% Damage","+50% Fire Rate\n+50% Aim Speed","+50% Projectile Speed\n+50% Fire Rate","+50% Projectile Size\n+50% Damage","+50% Fire Rate",""],
if boost=1 {
if master.weapons[wid,4] = 2 {
	ratee*=.66
	
}
if master.weapons[wid,4] = 3 {
	damage*=1.5
	aimspeedd*=1.5
}
if master.weapons[wid,4] = 4 {
	ratee*=.66
	projectilespeed*=1.5
}
if master.weapons[wid,4] = 5 {
	penetrate+=1
}
if master.weapons[wid,4] = 6 {
	damage*=1.5
	projectilespeed*=1.5
}
if master.weapons[wid,4] = 7 {
	ratee*=.66
	aimspeedd*=1.5
}
if master.weapons[wid,4] = 8 {
	ratee*=.66
	projectilespeed*=1.5
}
if master.weapons[wid,4] = 9 {
	projectilesize*=1.5
	damage*=1.5
}
if master.weapons[wid,4] = 10 {
	ratee*=.66
	aimspeedd*=1.5
}
if master.weapons[wid,4] > 10 {
	if master.limitchosen=1 {
		ratee*=.99
	}
	if master.limitchosen=2 {
		damage*=1.02
	}
	if master.limitchosen=3 {
		projectilespeed*=1.01
	}
	if master.limitchosen=4 {
		projectilesize*=1.01
	}
	if master.limitchosen!=-1 {
		master.limitchosen=-1
	}
	
}
boost=0
}
//}
}
