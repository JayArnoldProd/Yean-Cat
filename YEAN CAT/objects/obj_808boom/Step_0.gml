/// @description Insert description here
// You can write your code in this editor



if global.pause=1 {
	if !instance_exists(restar) {
	instance_destroy()
	exit
	}
} else {
			if instance_exists(yeancat) {
x=yeancat.x 
y=yeancat.y
	} else {
		instance_destroy()
	}
	
}

time+=1

if acc>.5 {
	acc-=.01
}
decaytimer-=acc*delta_time*global.room_speed_set/60
if decaytimer<=0 {
	instance_destroy()
}

image_alpha=(.5-abs(decaytimer/(decaytimerset*1000000)-.5))*2
image_xscale=(.5-abs(decaytimer/(decaytimerset*1000000)-.5))*2*range
image_yscale=image_xscale