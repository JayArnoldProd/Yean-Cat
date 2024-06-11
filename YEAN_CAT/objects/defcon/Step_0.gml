/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	if !instance_exists(restar) {
	x=xprevious
	y=yprevious
	_vspeed=0
	_hspeed=0
	speed=0
	}
	
	exit
} else {
_vspeed=vspeedset
_hspeed=hspeedset
}

if point_distance(x,y,pathh[pathid,0],pathh[pathid,1]) < 15 {
	if pathid<5 {
	pathid+=1
	vspeedset=lengthdir_y(point_distance(x,y,pathh[pathid,0],pathh[pathid,1])/75,point_direction(x,y,pathh[pathid,0],pathh[pathid,1]))
	hspeedset=lengthdir_x(point_distance(x,y,pathh[pathid,0],pathh[pathid,1])/75,point_direction(x,y,pathh[pathid,0],pathh[pathid,1]))
	} else {
		instance_destroy()
	}
}


if rate>0 {
	rate-=1
} else {
	rate=rateset
	anicount+=1
}
image_index=variant-1

//if x>1950 and x<2200 {
//	y = random(room_height+1000)-500
//}

if anicount=4 {
	anicount = 0
}

//x-=(((master.speedd+15)/10))*variant/2+1

//if instance_exists(yeancat) {
//if master.vert != 0 {
//	y-=master.vert*(1+yeancat.vspeedmax/5)*((master.speedd+20)/60)
//}

//if master.horz != 0 {
//	x-=master.horz*(1+yeancat.hspeedmax/5)*((master.speedd+20)/60)
//}
//}

if instance_exists(yeancat) {
direction=point_direction(x,y,yeancat.x,yeancat.y)
speed=10*(1-clamp(point_distance(x,y,yeancat.x,yeancat.y)/(master.magnet),0,1))*(master.magnet/100)
}

x+=_hspeed*(global.room_speed_set/1000000*delta_time)
y+=_vspeed*(global.room_speed_set/1000000*delta_time)

if x<-100 {
	instance_destroy()
}
