/// @description Insert description here
// You can write your code in this editor
if own !=4 {
if global.pause=1 {
	exit
}

if fading=1 or wait!=0 {
	exit
}

if tar=-1 {
	exit
}

if other.dead=0 {


if hit=1 {


if tar=0 and (target != enemy and target !=obj_boss) {
if other.grabbed!=-1 {
	if other.grabbed!=1 {
	target=other
			if target.resistance<1 {
			target.grabbed=1;
target.x+=(x-xprevious)
	target.y+=(y-yprevious)
	tar=1
	hit=0
	attacktimer=((ratee)*1000000)
target.col=c_red
} else {
target.col=c_silver
direction=(point_direction(other.x,other.y,x,y))
speed+=1
tar=0
target=noone
}
	target.missed=0
	target.frozen=0
	if instance_exists(yeancat) {
		var ddd=master.lyricism*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage
		if random(100)<master.criticalchance*100 {
		target.crit=1
		
		target.healthh-=ddd*(1-target.resistance)*master.criticalamount
		if yeancat.healthh<yeancat.maxhealth-1 {
		yeancat.healthh+=clamp(master.faith*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*(1-target.resistance)*master.criticalamount,0,99999999);
		}
		} else {
			target.healthh-=ddd*(1-target.resistance)
			if yeancat.healthh<yeancat.maxhealth-1 {
			yeancat.healthh+=clamp(master.faith*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*(1-target.resistance),0,99999999);
			}
		}
		}
	

if target.healthh<=0 {
if penetrate>0 {
		if instance_exists(enemy) {
	direction=point_direction(x,y,instance_nearest((room_width/2+x)/2,(room_height/2+y)/2,enemy).x-500/projectilespeed,instance_nearest((room_width/2+x)/2,(room_height/2+y)/2,enemy).y)
					}
	if instance_exists(yeancat) {
	direction=point_direction(x,y,room_width/2+(room_width/2-yeancat.x),room_height/2+(room_height/2-yeancat.y)/2)
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
tar=0
	target.grabbed=-1
	target=noone;
	penetrate-=1
} else {
	if instance_exists(yeancat) {
	direction=point_direction(x,y,room_width/2+(room_width/2-yeancat.x),room_height/2+(room_height/2-yeancat.y)/2)
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
	tar=-1
	target.grabbed=-1
	target=noone;
	penetrate=-1
}

	} else {
		if instance_exists(yeancat) {
		direction=point_direction(x,y,room_width/2+(room_width/2-yeancat.x),room_height/2+(room_height/2-yeancat.y)/2)
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
	//target.x=target.xprevious
	//target.y=target.yprevious
	
} else {
		if instance_exists(yeancat) {
		var ddd=master.lyricism*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage/2
		if random(100)<master.criticalchance*100 {
		other.crit=1
		
		other.healthh-=ddd*(1-other.resistance)*master.criticalamount/2
		if yeancat.healthh<yeancat.maxhealth-1 {
		yeancat.healthh+=clamp(master.faith*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*(1-other.resistance)*master.criticalamount,0,99999999)/2;
		}
		} else {
			other.healthh-=ddd*(1-other.resistance)
			if yeancat.healthh<yeancat.maxhealth-1 {
			yeancat.healthh+=clamp(master.faith*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*(1-other.resistance),0,99999999)/2;
			}
		}
		}
		//move_bounce_all(0)
		
	speed+=2
		direction=(point_direction(other.x,other.y,x,y))
		
}
} else {
	if tar=1 {
	if target=other {
		if instance_exists(yeancat) {
			var ddd=(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*((((ratee)*1000000)/master.rhythm)/(decaytimerset*1000000))
		
		if random(100)<master.criticalchance*100 {
		target.crit=1
		
		target.healthh-=ddd*(1-target.resistance)*master.criticalamount
		//yeancat.healthh+=master.faith*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*(1-target.resistance)*master.criticalamount
		} else {
			target.healthh-=ddd*(1-target.resistance)
			//yeancat.healthh+=master.faith*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*(1-target.resistance)
		}
		}
		if target.resistance<1 {
			target.grabbed=1;
target.col=c_red
} else {
target.col=c_silver

		speed+=2
		direction=(point_direction(other.x,other.y,x,y))
}

if target.healthh<=0 {
	if penetrate>0 {
	
				//hit=0
				//fading=0
				if instance_exists(enemy) {
					direction=point_direction(x,y,instance_nearest((room_width/2+x)/2,(room_height/2+y)/2,enemy).x-500/projectilespeed,instance_nearest((room_width/2+x)/2,(room_height/2+y)/2,enemy).y)
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
	tar=0
	target.grabbed=-1
	target=noone;
	penetrate-=1
	}	else {
		tar=-1
	}
	
	exit
}

	//target.x=target.xprevious
	//target.y=target.yprevious
	//target.x=x
	//target.y=y
	target.grabbed=1;
	hit=0
	attacktimer=((ratee)*1000000-(0-attacktimer))
	}	
	}
}

wait=1
} else {
	exit

}
}
}