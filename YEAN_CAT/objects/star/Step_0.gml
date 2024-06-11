/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	 if !instance_exists(restar) {
		 exit
	 }
}

if rate>0 {
	rate-=1
} else {
	rate=rateset
	anicount+=1
}

if x>room_width/2+1920*master.camscale/2+100 and x<room_width/2+1920*master.camscale/2+200 {
	y = random(room_height+1000)-500
}

if anicount=4 {
	anicount = 0
}

x-=master.speedd*varispeed

if instance_exists(yeancat) {
if master.vert != 0 {
	y-=master.vert*yeancat.vspeedmax*varispeed*(master.speedd/10)
}

if master.horz != 0 {
	x-=master.horz*yeancat.hspeedmax*varispeed*(master.speedd/10)
}
}

if x<-10 {
	instance_destroy()
}