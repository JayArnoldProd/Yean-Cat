/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	if !instance_exists(restar) {
	x=xprevious
	y=yprevious
	vspeed=0
	speed=0
	}
	
	exit
} else {

}

if rate>0 {
	rate-=1
} else {
	rate=rateset
	anicount+=1
}

//if x>1950 and x<2200 {
//	y = random(room_height+1000)-500
//}

if anicount=4 {
	anicount = 0
}

x-=1+((master.speedd+30)/20)*varispeed*2

if instance_exists(yeancat) {
if master.vert != 0 {
	y-=master.vert*(1+yeancat.vspeedmax/2)*((master.speedd+20)/60)
}

if master.horz != 0 {
	x-=master.horz*(1+yeancat.hspeedmax/2)*((master.speedd+20)/60)
}
}

if instance_exists(yeancat) {
direction=point_direction(x,y,yeancat.x,yeancat.y)
speed=10*(1-clamp(point_distance(x,y,yeancat.x,yeancat.y)/(master.magnet),0,1))*(master.magnet/100)
}

if x<-100 {
	instance_destroy()
}