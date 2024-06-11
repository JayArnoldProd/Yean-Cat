/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	x=xprevious
	y=yprevious
	vspeed=0
	exit
} else {
	if instance_exists(yeancat) {
		fly=yeancat.flying
}
vspeed=vspeedset
}

time+=.05+(variant-1)/30;

col=make_color_hsv(0+time % 255, clamp((0.5 * sin(2 * pi * (time) / 15) + 0.5)*255*(variant)/5 % 255,0,255),255-clamp((0.5 * sin(2 * pi * (time) / 30) + 0.5)*255*(variant)/10 % 255,0,255))


if rate>0 {
	rate-=1
} else {
	rate=rateset
	anicount+=1
}
image_index=0

//if x>1950 and x<2200 {
//	y = random(room_height+1000)-500
//}

if anicount=4 {
	anicount = 0
}

if onground=0 {
x-=(1+((master.speedd+2)/3)*varispeed*2)*frict
if frict>0 {
frict-=.001
}
} else {
	if frict>0 {
	frict*=.98
	}
	x-=(1+((master.speedd+2)/3)*varispeed*2)*frict
}

if instance_exists(yeancat) {
	if fly=0 {
	if onground=0 {
if master.vert != 0 {
	
	y-=(global.room_speed_set/1000000*delta_time)*master.vert*abs(yeancat._vspeed)/((fly+1))
}

if master.horz != 0 {
	x-=(global.room_speed_set/1000000*delta_time)*master.horz*abs(yeancat._hspeed)/((fly+1))
}
	} else {
		x-=(global.room_speed_set/1000000*delta_time)*master.horz*abs(yeancat._hspeed)/((fly+1))
	}
	} else {
		onground=0
	x-=(global.room_speed_set/1000000*delta_time)*master.horz*abs(yeancat._hspeed)/((fly+1))
	y-=(global.room_speed_set/1000000*delta_time)*master.vert*abs(yeancat._vspeed)/((fly+1))
}
}

if instance_exists(yeancat) {
direction=point_direction(x,y,yeancat.x,yeancat.y-yeancat.tallness)
speed=10*(1-clamp(point_distance(x,y,yeancat.x,yeancat.y+yeancat.tallness)/(master.magnet),0,1))*(master.magnet/100)
}

if x<-100 {
	instance_destroy()
}
