///End Step of razziA
//i think this code is involved in keeping track of enemy position off screen, they actually stay in place but a value changes to simlate where they are. and begin moving again when back in view.
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
	