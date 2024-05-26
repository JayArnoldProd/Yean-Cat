/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	if !instance_exists(restar) {
	x=xprevious
	y=yprevious
	speed=0
	}
	
	exit
} else {
	if master.collection[itemidd,1]!=2 {
instance_destroy();
}
	if moves=1 {
_vspeed=vspeedset
_hspeed=hspeedset
	}
}

if spawnd=0 {
	if moves=0 {
		if x<room_width/2 {
	_hspeed=12
} else {
	_hspeed=-12
}
	} else {
	//vspeedset=lengthdir_y(point_distance(x,y,pathh[pathid,0],pathh[pathid,1])/slowness,point_direction(x,y,pathh[pathid,0],pathh[pathid,1]))
	//hspeedset=lengthdir_x(point_distance(x,y,pathh[pathid,0],pathh[pathid,1])/slowness,point_direction(x,y,pathh[pathid,0],pathh[pathid,1]))
	
	}
	spawnd=1
}

if moves=1 {
	
if point_distance(x,y,pathh[pathid,0],pathh[pathid,1]) < 15 {
	if pathid<5 {
	pathid+=1
	vspeedset=lengthdir_y(point_distance(x,y,pathh[pathid,0],pathh[pathid,1])/75,point_direction(x,y,pathh[pathid,0],pathh[pathid,1]))
	hspeedset=lengthdir_x(point_distance(x,y,pathh[pathid,0],pathh[pathid,1])/75,point_direction(x,y,pathh[pathid,0],pathh[pathid,1]))
	} else {
		instance_destroy()
	}
}
}
osc+=.1
tracknum=variant
image_index=tracknum-1
if tracknum>14 {
	instance_destroy();
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
			x=-500
			poss-=(global.room_speed_set/1000000*delta_time)*(master.horz*abs(yeancat._hspeed))
		if poss<0 {
				poss=0
			}
		}
	} else {
		 if x<room_width+500 {
			 if poss>=0 {
			x-=(global.room_speed_set/1000000*delta_time)*(master.horz*abs(yeancat._hspeed))
			 }
		} else {
			x=room_width+500
			poss-=(global.room_speed_set/1000000*delta_time)*(master.horz*abs(yeancat._hspeed))
			if poss>0 {
				poss=0
			}
		}
	}
	
} else {
		x+=_hspeed*(global.room_speed_set/1000000*delta_time)
_hspeed*=.985
}
}
if space=1 {
	if flying=1 {
y+=((room_height/2)-y)/500
	} else {
		y-=1
		
	}
} else {
	if flying=0 {
		if obj_terrain.playeraltitude<3000 {
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


if moves=1 {

x+=_hspeed*(global.room_speed_set/1000000*delta_time)
y+=_vspeed*(global.room_speed_set/1000000*delta_time)

}


if (planett !=obj_terrain.planet)  and planett !=-1 {
	instance_destroy()
}
if space=1 and obj_terrain.playeraltitude<39000 {
	instance_destroy()
}
if x<-2000 {
	instance_destroy()
}