/// @description Insert description here
// You can write your code in this editor



if global.pause=1 {
	if !instance_exists(restar) {
	x=xprevious
	y=yprevious
	speed=0
	exit
	}
	}  else {
	if decided=0 {
		if instance_exists(enemy) {
			if point_distance(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y) < range {
			target=instance_nearest(x,y,enemy)
			
			} 
		}
		if instance_exists(obj_boss) {
			if point_distance(x,y,instance_nearest(x,y,obj_boss).x,instance_nearest(x,y,obj_boss).y) < range {
			target=instance_nearest(x,y,obj_boss)
			}
		}
		decaytimerset=duration
decaytimer=decaytimerset*1000000	
if instance_exists(target) {
xx=target.x
yy=target.y
dd=point_distance(x,y,xx,yy)/350
}
		orbitangle=point_direction(x,y,xx,yy)
		decided=1
	}
if instance_exists(yeancat) {
if instance_exists(target) {
	orbitangle=point_direction(x,y,target.x,target.y)
} else {
	if instance_exists(enemy) {
		if point_distance(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y) < range {
			target=instance_nearest(xx,yy,enemy)
		}
		}
		if instance_exists(obj_boss) {
			if point_distance(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y) < range {
			target=instance_nearest(xx,yy,obj_boss)
			}
		}
		if instance_exists(target) {
xx=target.x
yy=target.y
dd=point_distance(x,y,xx,yy)/350
} else {
	instance_destroy()
}
}
//projectilespeed=1
//projectilesize=1
//orbitangle=0
//range=1
//oscrange=.1


	if instance_exists(obj_thestorm) {
		if chainn=0 {
		x=obj_thestorm.x
		y=obj_thestorm.y
		}
	}
} else {
	instance_destroy()
}




	}
	
	if acc>1 {
	acc-=.005
}


	
image_angle=orbitangle
time+=1
image_xscale=(.5-abs(decaytimer/(decaytimerset*1000000)-.5))*dd*2.1
image_yscale=image_xscale
if audio_emitter_exists(myEmitter) and instance_exists(target) {
audio_emitter_position(myEmitter,x+lengthdir_x(400*image_xscale,point_direction(x,y,target.x,target.y)),y+lengthdir_y(400*image_xscale,point_direction(x,y,target.x,target.y)),0)
audio_sound_pitch(soundd,1-clamp(.5*image_xscale,0,.75))
}

decaytimer-=acc*delta_time*global.room_speed_set/60
if decaytimer<=0 {
	decaytimer=0
	instance_destroy()
}
