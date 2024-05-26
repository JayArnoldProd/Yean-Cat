/// @description Insert description here
// You can write your code in this editor

if time<20 {
if !targ=noone {
		x=targ.x
		y=targ.y
	} else {
		x+= (sign(x-room_width/2+1920*.65-250)*3/(size*(log10(sqrt(abs(damage)/10)+1)/2+1)))*clamp(point_distance(x,y,room_width/2+1920*.65-250, room_height/2+1080*.8-100)/1000,0,1)
		y+= (sign(y-room_height/2+1080*.8-100)*3/(size*(log10(sqrt(abs(damage)/10)+1)/2+1)))*clamp(point_distance(x,y,room_width/2+1920*.65-250, room_height/2+1080*.8-100)/1000,0,1)
	}
	} else {
		speed=(speed+(time)/20-1)*clamp((point_distance(x,y,room_width/2+1920*.65-250,room_height/2+1080*.8-100))/600,.1,1.01)
		direction=point_direction(x,y,room_width/2+1920*.65-250,room_height/2+1080*.8-100)
	}
	c5a[1]=clamp((dur/(durset*1000000))*255,0,255)
	if c5a[2]>0 {
		c5a[2]-=2
		if c5a[2]<0 {
			c5a[2]=0
		}
	}
	
	if global.pause=1 {
	exit
}
	
	
if damage<0 {
	postring="-$"
	c1a[0]=0
	c2a[0]=0
	c3a[0]=0
	c4a[0]=0
	c5a[0]=0
	c_pos=c_red
} else {
	if damage=0 {
		instance_destroy()
	}
}

if instance_exists(yeancat) {
	targ=yeancat
} else {
	targ=noone
}



time+=.4
ran+=randshift;
size+=.0025
if dur>0 {
	if on<=0 {
	dur-=delta_time
	}
} else { 
	instance_destroy()
}
if on<=0 {
alph=clamp((dur/(durset*1000000)),0,1)
if alph<=0 and dur<=0 {
	if targ!=noone {
	}
	instance_destroy()
}
} else {
	alph=clamp((1-abs((127-c1a[1]))/127)*2,0,1)
}

if on=1 {
if c1a[1]<127 {
	c1a[1]+=clamp(abs(127-c1a[1]),1,2)
} else {
	if c1a[1]!=127 {
	c1a[1]-=clamp(abs(127-c1a[1]),1,2)
	}
}
if c1a[2]<127 {
	c1a[2]+=clamp(abs(127-c1a[2]),1,2)
} else {
	if c1a[2]!=127 {
	c1a[2]-=clamp(abs(127-c1a[2]),1,2)
	}
}
if c2a[1]<127 {
	c2a[1]+=clamp(abs(127-c2a[1]),1,2)
} else {
	if c2a[1]!=127 {
	c2a[1]-=clamp(abs(127-c2a[1]),1,2)
	}
}
if c2a[2]<127 {
	c2a[2]+=clamp(abs(127-c2a[2]),1,2)
} else {
	if c2a[2]!=127 {
	c2a[2]-=clamp(abs(127-c2a[2]),1,2)
	}
}
if c3a[1]<127 {
	c3a[1]+=clamp(abs(127-c3a[1]),1,2)
} else {
	if c3a[1]!=127 {
	c3a[1]-=clamp(abs(127-c3a[1]),1,2)
	}
}
if c3a[2]<127 {
	c3a[2]+=clamp(abs(127-c3a[2]),1,2)
} else {
	if c3a[2]!=127 {
	c3a[2]-=clamp(abs(127-c3a[2]),1,2)
	}
}
if c4a[1]<127 {
	c4a[1]+=clamp(abs(127-c4a[1]),1,2)
} else {
	if c4a[1]!=127 {
	c4a[1]-=clamp(abs(127-c4a[1]),1,2)
	}
}
if c4a[2]<127 {
	c4a[2]+=clamp(abs(127-c4a[2]),1,2)
} else {
	if c4a[2]!=127 {
	c4a[2]-=clamp(abs(127-c4a[2]),1,2)
	}
}
} else {
	if c1a[1]<255 {
	c1a[1]+=clamp(abs(255-c1a[1]),1,2)
}
if c1a[2]<255 {
	c1a[2]+=clamp(abs(255-c1a[2]),1,2)
}
if c2a[1]<255 {
	c2a[1]+=clamp(abs(255-c2a[1]),1,2)
}
if c2a[2]<255 {
	c2a[2]+=clamp(abs(255-c2a[2]),1,2)
}
if c3a[1]<255 {
	c3a[1]+=clamp(abs(255-c3a[1]),1,2)
}
if c3a[2]<255 {
	c3a[2]+=clamp(abs(255-c3a[2]),1,2)
}
if c4a[1]<255 {
	c4a[1]+=clamp(abs(255-c4a[1]),1,2)
}
if c4a[2]<255 {
	c4a[2]+=clamp(abs(255-c4a[2]),1,2)
}
}
if (c1a[1] = 127) and (c1a[2] = 127) {
	if (c2a[1] = 127) and (c2a[2] = 127) {
		if (c3a[1] = 127) and (c3a[2] = 127) {
			if (c4a[1] = 127) and (c4a[2] = 127) {
				on=0
	
}
	
}
	
}
	
}

if (c1a[1] = 0) and (c1a[2] = 0) {
	if (c2a[1] = 0) and (c2a[2] = 0) {
		if (c3a[1] = 0) and (c3a[2] = 0) {
			if (c4a[1] = 0) and (c4a[2] = 0) {
				on=-1
	
}

}
	
}
	
}



c5=make_color_hsv(c5a[0],c5a[1],c5a[2])
c1=make_color_hsv(c1a[0],(1-(0.5 * sin(2 * pi * (time) / 5 +pi/2)))*c5a[1]+c1a[1]*(0.5 * sin(2 * pi * (time*1) / 5)),(0.5 * sin(2 * pi * (time) / 5))*c5a[2]+c1a[2]*(1-(0.5 * sin(2 * pi * (time) / 5 +pi/2))))
c2=make_color_hsv(c2a[0],(1-(0.5 * sin(2 * pi * (time) / 5 +pi*3/4)))*c5a[1]+c2a[1]*(0.5 * sin(2 * pi * (time) / 5 +pi/4)),(0.5 * sin(2 * pi * (time) / 5 +pi/4))*c5a[2]+c2a[2]*(1-(0.5 * sin(2 * pi * (time) / 5 +pi*3/4))))
c3=make_color_hsv(c3a[0],(1-(0.5 * sin(2 * pi * (time) / 5)))*c5a[1]+c3a[1]*(0.5 * sin(2 * pi * (time) / 5 +pi/2)),(0.5 * sin(2 * pi * (time) / 5 +pi/2))*c5a[2]+c3a[2]*(1-(0.5 * sin(2 * pi * (time) / 5))))
c4=make_color_hsv(c4a[0],(1-(0.5 * sin(2 * pi * (time) / 5 +pi/4)))*c5a[1]+c4a[1]*(0.5 * sin(2 * pi * (time) / 5 +pi*3/4)),(0.5 * sin(2 * pi * (time) / 5 +pi*3/4))*c5a[2]+c4a[2]*(1-(0.5 * sin(2 * pi * (time) / 5 +pi/4))))

