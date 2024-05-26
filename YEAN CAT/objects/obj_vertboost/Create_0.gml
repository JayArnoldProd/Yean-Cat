/// @description Insert description here
// You can write your code in this editor
dir=choose(-1,1)
speedd=5+random(5)
fly=0
onground=0
if dir=1 {
	x=room_width/2+1920*master.camscale/2+300
	y=room_height/2+random(room_height/2)-room_height/4
} else {
	x=room_width/2-1920*master.camscale/2-300
	y=room_height/2+random(room_height/2)-room_height/4
}



