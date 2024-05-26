/// @description Insert description here
// You can write your code in this editor
	//left
	if x<(room_width/2-3/8*room_width*master.camscale) {
		hdist-=xprevious-x
		x=xprevious
		y=yprevious
	}
	//right
	if x>(room_width/2+3/8*room_width*master.camscale) {
		hdist+=x-xprevious
		x=xprevious
		y=yprevious
	}
	//botton
	if y>(room_height/2+room_height*3/8*master.camscale) {
		vdist+=y-yprevious
		x=xprevious
		y=yprevious
	}
	//top
	if y<(room_height/2-room_height*3/8*master.camscale){
		vdist-=yprevious-y
		x=xprevious
		y=yprevious
	}
	