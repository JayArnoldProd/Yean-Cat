/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	exit
}
if secondtime>0 {
if alp<1 {
	alp+=.02
} else {
	if secondtime>0 {
		secondtime-=delta_time*global.room_speed_set/60
	} else {
		secondtime=0
	}
}
} else {
	if alp>0 {
	alp-=.01
	} else {
	alp=0
	instance_destroy()
	}
}
if instance_exists(yeancat) {
x=yeancat.x
y=yeancat.y-(60-secondtime/50000)
}
