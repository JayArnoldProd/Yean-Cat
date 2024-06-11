/// Step of obj_nerdblaster
//
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
	face=yeancat.facing
	rotbot=yeancat.rotatebody
	

if wid != -1 {
level = master.weapons[wid,4]
}

var startdirr=0
if attackaim=10 {
	if rotimage=1 {
	if aimrot=1 {
		startdir+=(aimspeedd/60)*(global.room_speed_set/1000000*delta_time)*(1.1-abs(startdir/(aimamplitude/2)))
		if startdir>aimamplitude/2 {
			aimrot=-1
			startdir=aimamplitude/2
		}
	}
	if aimrot=-1 {
		startdir-=(aimspeedd/60)*(global.room_speed_set/1000000*delta_time)*(1.1-abs(startdir/(aimamplitude/2)))
		if startdir<-aimamplitude/2 {
			aimrot=1
			startdir=-aimamplitude/2
		}
	}
	if face=1 {
	startdirr= startdir+30*(100/(100+clamp(obj_terrain.playeraltitude+obj_terrain.player_height_fromground,0,1000000)))
	} else {
	startdirr= startdir+30*(100/(100+clamp(obj_terrain.playeraltitude+obj_terrain.player_height_fromground,0,1000000)))
	}
	if face=1 {
	image_angle=startdirr+rotbot
	} else if face=-1 {
		image_angle=180-startdirr+rotbot
	}
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
					if face!=-1 {
					tweet=instance_create_layer(x+face*(120 * cos(degtorad(startdirr+rotbot))),y-face*sin((startdirr+rotbot) * pi / 180)*tipx-8,"player",projectile)
					} else {
					tweet=instance_create_layer(x-face*(120 * cos(degtorad(180-startdirr+rotbot))),y+face*sin((180-startdirr+rotbot) * pi / 180)*tipx-8,"player",projectile)

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
		if attackaim=11 {
	tweet.directionn=0+360/(master.clone+amount)*jj+360/(ratemult+1)*jj//modified direction
		}
		if attackaim=10 {
		if face!=-1 {
			var hal=rotbot+startdirr+.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((master.clone+amount-jj+1)/(master.clone+amount+1))-.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((jj+1)/(master.clone+amount+1))+25
		tweet.direction=hal
		} else {
			var hal= 180+rotbot-startdirr+.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((master.clone+amount-jj+1)/(master.clone+amount+1))-.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((jj+1)/(master.clone+amount+1))-25
		tweet.direction=hal
		tweet._vspeed=lengthdir_y(tweet.projectilespeed,hal)
		}
		}
	} else {
			if attackaim=11 {
	tweet.directionn=0+360/(master.clone+amount)*jj+360/(ratemult+1)*jj//modified direction
		}
		if attackaim=10 {
			//aimamplitude
			//tweet.direction=startdir+(15/((master.clone+1+amount)/2))*(master.clone+1+amount)/2-(30/((master.clone+1+amount)/2))*((master.clone+amount)*jj)
		if face!=-1 {
		tweet.direction=rotbot+startdir+.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((master.clone+amount-jj+1)/(master.clone+amount+1))-.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((jj+1)/(master.clone+amount+1))+25
		} else {
		tweet.direction=180+rotbot-startdir+.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((master.clone+amount-jj+1)/(master.clone+amount+1))-.5*aimamplitude*(1-sqrt(1/((master.clone+amount))))*((jj+1)/(master.clone+amount+1))-25
			
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

}

if instance_exists(yeancat) {
depth=yeancat.depth-1*face*dept
x=yeancat.x+lengthdir_x(recoilshift,image_angle+180)+holdpos*far*face+far*face*(dept+1)*abs(holdpos)/2+abs(dept-1)/2*face*far
y=yeancat.y+lengthdir_y(far*2,image_angle)+(0.5 * sin(2 * pi * yeancat.anicount / 5) + 0.5)*23*yeancat.scale-10
} else {
	instance_destroy()
}

if levellast<level {
	levellast=level
	boost=1
}
//if !instance_exists(obj_levelup) {
//["A Toy Gun","+33% Attack Rate\n+33% Aim Speed","x2 Damage","+1 Penetration","+33% Attack Rate\n+33% Aim Speed","+50% Damage","+20 Degrees Range\n+50% Aim Speed",+20% Attack Rate\n+50% Projectile Speed","+25% Projectile Size\n+50% Damage\n+20% Attack Rate","+1 Projectile",""],
if boost=1 {
if master.weapons[wid,4] = 2 {
	ratee*=.9
	aimspeedd*=1.33
}
if master.weapons[wid,4] = 3 {
	damage*=2
}
if master.weapons[wid,4] = 4 {
	penetrate+=1
}
if master.weapons[wid,4] = 5 {
	ratee*=.85
	aimspeedd*=1.33
}
if master.weapons[wid,4] = 6 {
	damage*=1.5
}
if master.weapons[wid,4] = 7 {
	aimamplitude+=20
	aimspeedd*=1.5
}
if master.weapons[wid,4] = 8 {
	ratee*=.8
	projectilespeed*=1.5
}
if master.weapons[wid,4] = 9 {
	projectilesize*=1.25
	damage*=1.5
	ratee*=.85
}
if master.weapons[wid,4] = 10 {
	amount+=1
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
		aimamplitude+=1
	}
	if master.limitchosen!=-1 {
		master.limitchosen=-1
	}
	
}
boost=0
}
//}
}
