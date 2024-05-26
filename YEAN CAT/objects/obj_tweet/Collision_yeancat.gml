/// @description Insert description here
// You can write your code in this editor
if own =4 {
if global.pause=1 {
	exit
}

if fading=1 {
	exit
}

if tar=-1 {
	exit
}

if hit=1 {


if tar=0 and target != enemy {
if other.grabbed!=-1 {
	if other.grabbed!=1 {
	target=other
	target.missed=0
	target.frozen=0
	//if instance_exists(yeancat) {
	//	var ddd=(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*ratee
	//	if random(100)<master.criticalchance*100 {
	//	target.crit=1
		
	//	target.healthh-=ddd*(1-target.resistance)*master.criticalamount
	//	//yeancat.healthh+=master.faith*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*(1-target.resistance)*master.criticalamount
	//	} else {
	//		target.healthh-=ddd*(1-target.resistance)
	//		//yeancat.healthh+=master.faith*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*(1-target.resistance)
	//	}
	//	}
	
		if target.resistance<1 {
//target.col=c_red
} else {
target.col=c_silver
move_bounce_all(0);
}
if penetrate>0 {
	direction=point_direction(x,y,3*room_width/4,room_height/2)
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
target.grabbed=1;
target.x+=(x-xprevious)
	target.y+=(y-yprevious)
	tar=1
	hit=0
	attacktimer=((ratee)*1000000)
	}
	//target.x=target.xprevious
	//target.y=target.yprevious
	
}
} else {
	if tar=1 {
	if target=other {
		if instance_exists(yeancat) {
			var ddd=(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage
		
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
move_bounce_all(0);
}

if target.healthh<=0 {
	if penetrate>0 {
	penetrate-=1
				//hit=0
				//fading=0
				if instance_exists(enemy) {
					direction=point_direction(x,y,instance_nearest(yeancat.x-200,yeancat.y,enemy).x-500/projectilespeed,instance_nearest(yeancat.x-200,yeancat.y,enemy).y)
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
	tar=0
	target.grabbed=0
	target=noone;
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


} else {
	exit

}
} else {
	exit
}