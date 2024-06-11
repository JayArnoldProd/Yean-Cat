/// @description Insert description here
// You can write your code in this editor

if global.pause=1 {
	speed=0
	exit
}
var ppid=0
//types
if spawned=0 {
rand = 0
spee = 10

	if (pid <= 2) {
        ppid=pid
    } else {
        ppid= (pid - 3) % 3
    }
	spins=0
	rand=random(30)-15
	homing=(random(10)-5)/2
	spee=40+random(20)
	deflectable=0
if ppid=0 {
	//first projectile
	homing=(random(2)-1)/2
	spins=0
	rand=random(30)-15
	spee=(10+10*(pid/45)+random(10)+(20+random(10))*(pid/45))/2
	deflectable=0
}
if ppid=1 {
	//second
	homing=(random(10))
	spins=(random(2)-1)/2
	rand=random(60)-30
	deflectable=0
	spee=(10+10*(pid/45)+random(10)+(20+random(10))*(pid/45))
}
if ppid=2 {
	//third
	spins=(random(2)-1)/2
	rand=random(90)-45
	homing=(random(30))
	spee=(10+10*(pid/45)+random(10)+(10+random(10))*(pid/45))/1.5
	deflectable=0
}
if instance_exists(yeancat) {
_hspeed=lengthdir_x(spee,point_direction(x,y,yeancat.x,yeancat.y)+rand)
_vspeed=lengthdir_y(spee,point_direction(x,y,yeancat.x,yeancat.y)+rand)
}

spawned=1
}

image_xscale=size/3
image_yscale=size/3
angrot+=spins
if angrot>360 {
	angrot=0
}
if angrot<0 {
	angrot=360
}
image_angle=point_direction(xprevious,yprevious,x,y)+angrot
image_index=pid
if homing!=0 {
	if deflected=0 {
		if instance_exists(yeancat) {
direction=point_direction(x,y,yeancat.x,yeancat.y-yeancat.tallness)
speed=10*(1-clamp(point_distance(x,y,yeancat.x,yeancat.y-yeancat.tallness)/homing,0,1))*(homing/100)
		}
	}
}
if missed>0 {
	col=make_color_hsv(color_get_hue(c_gray)*missed+color_get_hue(c_white)*(1-missed),color_get_saturation(c_gray)*missed+color_get_saturation(c_white)*(1-missed),color_get_value(c_gray)*missed+color_get_value(c_white)*(1-missed));
	missed-=.01
	if missed=0 {
		col=c_ltgray
	}
	if grabbed=0 {
	//x-=missed*master.speedd/2
	}
} else {
	if col=c_ltgray {
		col=c_white
		missed=0
	}
}
sx=xprevious-x
sy=yprevious-y
if instance_exists(restar) or !instance_exists(obj_boss) {
	_hspeed=sign(x-(room_width/2))*2
	_vspeed=sign(y-(room_height/2))*2
}

x+=_hspeed*(global.room_speed_set/1000000*delta_time)
y+=_vspeed*(global.room_speed_set/1000000*delta_time)

