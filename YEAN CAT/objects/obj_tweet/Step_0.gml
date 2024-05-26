/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	exit
}
if wait>0 {
	wait-=.02 
	if wait<=0 {
		wait=0
	}
}
if directionn>0 {
	direction+=directionn
	if direction<90 or direction>270 {
	if direction<90 {
	dirr=0
	} else {
		dirr=360
	}
} else {
	dirr=180
}
	directionn=-1
}
if y>room_height/2+100 {
var clop=((600-obj_terrain.lowercloud)/600)
worldd=obj_terrain.terrain
var spaci=obj_terrain.spacing
var playerpos=obj_terrain.playerpos
var terrainheight=obj_terrain.terrainheight
var arl=array_length(obj_terrain.terrain)
var index1 = 1+floor((x+spaci*(sign(playerpos)*(abs(playerpos/spaci)-floor(abs(playerpos/spaci))))) / spaci);
var index2 = 1+ceil((x+spaci*(sign(playerpos)*(abs(playerpos/spaci)-floor(abs(playerpos/spaci))))) / spaci);
var fract = frac((x+spaci*(sign(playerpos)*(abs(playerpos/spaci)-floor(abs(playerpos/spaci))))) / spaci);
if (index1 >= 0 && index2 < arl) {
    var height1 = worldd[index1] * terrainheight;
    var height2 = worldd[index2] * terrainheight;
    bullet_height_fromground = obj_terrain.playeraltitude+(obj_terrain.y-spaci*.9+lerp(height1, height2, fract) - (y))*clop;

}
}
if bullet_height_fromground<=0 {
	y=yprevious
	direction=360-direction
	y-=1
}

if global.pause=1 {
	if !instance_exists(restar) {
	x=xprevious
	y=yprevious
	speed=0
	exit
	}
} else {
			if instance_exists(yeancat) {
if master.vert != 0 {
	y-=clamp((global.room_speed_set/1000000*delta_time)*master.vert*abs(yeancat._vspeed)*.4,-6,6)
}

if master.horz != 0 {
	x-=clamp((global.room_speed_set/1000000*delta_time)*master.horz*abs(yeancat._hspeed)*.4,-6,6)
}
	}
	if fading=0 {
speed=projectilespeed*(clamp(time/5,0,6))*clamp(time/(projectilespeed*.75+10),0,2.1)*(global.room_speed_set/1000000*delta_time)/1.5
if hit=0 {
	if attacktimer>0 {
attacktimer-=delta_time*global.room_speed_set/60
	}
}
if attacktimer <= 0 {
	if instance_exists(target) {
			if target.resistance<1 {
			target.grabbed=1;
target.col=c_red
} else {
target.col=c_silver
move_bounce_all(0);
}
	}
	repeat (ratemult+1) {
	hit=1
	
	if tar=1 {
	if instance_exists(target) {
		if target.healthh>0 {
		if instance_exists(yeancat) {
			var ddd=master.lyricism*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*((((ratee)*1000000)/master.rhythm)/(decaytimerset*1000000)/(ratemult+1))
		
		if random(100)<master.criticalchance*100 {
		target.crit=1
		
		target.healthh-=ddd*(1-target.resistance)*master.criticalamount
		yeancat.healthh+=master.faith*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*(1-target.resistance)*master.criticalamount
		} else {
			target.healthh-=ddd*(1-target.resistance)
			yeancat.healthh+=master.faith*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*(1-target.resistance)
		}
		}
		target.grabbed=1;
		}
}

	//target.x=target.xprevious
	//target.y=target.yprevious
	//target.x=x
	//target.y=y
	
	
	
	
	}	
	
	}
	if instance_exists(target) {
	if target.healthh<=0 {
	if penetrate>0 {
	
				hit=0
				//fading=0
				if instance_exists(enemy) and own!=4 {
					if instance_exists(yeancat) {
						direction=point_direction(x,y,instance_nearest(yeancat.x+100*face,yeancat.y,enemy).x-((master.speedd+1)*100)/(projectilespeed+(master.speedd)),instance_nearest(yeancat.x+100*face,yeancat.y,enemy).y)
					}
				}
				if own=4 {
					if instance_exists(yeancat) {
					direction=point_direction(x,y,instance_nearest(x,y,yeancat).x,instance_nearest(x,y,yeancat).y);
					}
				}
				if direction<90 or direction>270 {
	if direction<90 {
	dirr=0
	} else {
		dirr=360
	}
} else {
	dirr=180
}

	target.grabbed=0
	target=noone;
	penetrate-=1
	tar=0
	} else {
	fading=1
	tar=-1
	}
	exit
}
	}
	if ratee*1000000<delta_time*global.room_speed_set/60 {
		ratemult=clamp(floor((delta_time*global.room_speed_set/60)/(ratee*1000000/master.rhythm)-1),0,5)
	}
	attacktimer=((ratee)*1000000)/master.rhythm
	hit=0
}
} else {
	if direction<180 {
	if direction>90 {
		spin=-1
	} else {
		spin=1
	}
} else {
	if direction<270 {
		spin=1
	} else {
		spin=-1
	}
}
	direction+=spin/2
	speed*=1.01
	fade+=1
}
}

time+=1


decaytimer-=delta_time*global.room_speed_set/60
if decaytimer<=0 and fading=0 {
	if tar=1 {
		
		 {
			if penetrate=0 {
	direction=(point_direction(room_width/2,room_height/2,x,y))
			tar=-1
			target.grabbed=0
			//hit=0
			suck=5
			fading=1;
			//attacktimer=((ratee)*1000000-(0-attacktimer))
			} else {
				penetrate-=1
				tar=0
				//hit=0
				fading=0
				target.grabbed=0
				if instance_exists(enemy){
				if own  != 4 {
					direction=point_direction(x,y,instance_nearest((room_width/2+x)/2,(room_height/2+y)/2,enemy).x,instance_nearest((room_width/2+x)/2,(room_height/2+y)/2,enemy).y)
				}
				} 
				if own=4 and instance_exists(yeancat) {
					direction=point_direction(x,y,instance_nearest(x,y,yeancat).x,instance_nearest(x,y,yeancat).y);
				}
				suck=5
				target=noone
				//attacktimer=((ratee)*1000000-(0-attacktimer))
				decaytimer=decaytimerset*1000000
			}
							if direction<90 or direction>270 {
	if direction<90 {
	dirr=0
	} else {
		dirr=360
	}
} else {
	dirr=180
}
		}
		
	}
	
}

if fading=0 {
if tar=1 {
	if suck>0 {
	suck-=.05*(projectilespeed)
	} else {
		suck=0
	}
	target.x=(target.x*(suck)+x)/(suck+1)
	target.y=(target.y*(suck)+(y+40*projectilesize))/(suck+1)
}  else {
	suck=5
}
}

if round(dirr) != round(direction) {
dirr+=sign(round(direction)-dirr)/4*clamp(time/20,0,1)
}

image_xscale=projectilesize/(sprite_get_height(sprite_index)/400)/4*sqr(clamp(time/(100/(projectilespeed+1)),0,1))*.8
image_yscale=image_xscale

if audio_is_playing(soundd) {
		audio_sound_pitch(soundd,pitch*master.keypitch*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
		}