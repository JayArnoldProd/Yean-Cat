if global.pause=1 {
	if !instance_exists(restar) {
	x=xprevious
	y=yprevious
	speed=0
	}
	
	exit
} else {
	if moves=1 {
_vspeed=vspeedset
_hspeed=hspeedset
	}
}

//collectibles
//name,1state, 2amount collected, 3amount til next,4enabled,5upgradeprice,6level,7seen,i8mage, 9can disable, 10item id, 11image_index, 12unlocks what, 13 requirement(s) 14text color, 15object type, 16 rarity, 17variant, 18 good or bad, 19 in shop? 
if master.collection[itemidd,1]!=2 {
master.collection[itemidd,1]=2
master.collection[itemidd,7]=-2
}

if moves=1 {
if point_distance(x,y,pathh[pathid,0],pathh[pathid,1]) < 15 {
	if pathid<5 {
	pathid+=1
	vspeedset=lengthdir_y(point_distance(x,y,pathh[pathid,0],pathh[pathid,1])/slowness,point_direction(x,y,pathh[pathid,0],pathh[pathid,1]))
	hspeedset=lengthdir_x(point_distance(x,y,pathh[pathid,0],pathh[pathid,1])/slowness,point_direction(x,y,pathh[pathid,0],pathh[pathid,1]))
	} else {
		instance_destroy()
	}
}
}


if master.weapons[variant,4] >= master.weapons[variant,5] {
				instance_destroy();
			}

/// @description Insert description here
// You can write your code in this editor
//WEAPONS 
//DEM1 = ID;
//0name, 
//1 type, 0=base, 1=evolution, 2=superevo, 3=fusion
//2obtained?, 
//3discovered?, 
//4level, 
//5max level, 
//6passive requirement1, -1 = none
//7passive requirement2, -1 = none 
//8weapon requirement1, -1 = none
//9weapon requirement 2 -1 = none,
//10require max passives? 0 or 1
//11image, 
//12description
//13unlocked? (found in randomizer)
//14banished?
//15can spawn
osc+=.1

if collect=0 {
//if good=0 {
if master.weapons[variant,2]=1 {
			if master.weapons[variant,4] < master.weapons[variant,5] {
				good=1
			} else {
				if master.nocap=1 {
								good=1
				} else {
					instance_destroy();
				}
			}
	}
}
//}

osc+=.1


if variant != -1 {
sprite_index=master.weapons[variant,11]
image_index=0
image_xscale=1/(sprite_get_height(sprite_index)/300)/2+(0.5 * sin(2 * pi * osc / 5) + 0.5)/5
image_yscale=image_xscale
}
if moves=0 {

if instance_exists(yeancat) {
if master.vert != 0 {
	y-=(global.room_speed_set/1000000*delta_time)*(master.vert*abs(yeancat._vspeed))

}

if master.horz != 0 {
	if master.horz>0 {
		if x>-500 {
			if poss<=0 {
			x-=(global.room_speed_set/1000000*delta_time)*(master.horz*abs(yeancat._hspeed))
			}
		} else {
			poss-=(global.room_speed_set/1000000*delta_time)*(master.horz*abs(yeancat._hspeed))
		}
	} else {
		 if x<room_width+500 {
			 if poss>=0 {
			x-=(global.room_speed_set/1000000*delta_time)*(master.horz*abs(yeancat._hspeed))
			 }
		} else {
			poss-=(global.room_speed_set/1000000*delta_time)*(master.horz*abs(yeancat._hspeed))
		}
	}
	
} else {
		x-=_hspeed*(global.room_speed_set/1000000*delta_time)
_hspeed*=.995
}
}
if space=1 {
	if flying=1 {
y+=((room_height/2)-y)/700
	} else {
		y-=1
		
	}
} else {
	if flying=0 {
		if obj_terrain.playeraltitude<1000 {
		y+=((room_height/2)-y)/700
		} else {
			y+=1
		}
	} else {
		y+=1
		
	}
}
if y<-2000 or y>room_height+2000 {
			instance_destroy()
		}

}

if instance_exists(yeancat) {
direction=point_direction(x,y,yeancat.x,yeancat.y)
speed=10*(1-clamp(point_distance(x,y,yeancat.x,yeancat.y)/(master.magnet),0,1))*(master.magnet/100)

}



x+=_hspeed*(global.room_speed_set/1000000*delta_time)//(speed/4+1)
y+=_vspeed*(global.room_speed_set/1000000*delta_time)//(speed/4+1)

if obj_terrain.planet!=planett and planett !=-1 {
	instance_destroy()
}
if space=1 and obj_terrain.playeraltitude<39000 {
	instance_destroy()
}
if x<-2000 {
	instance_destroy()
}