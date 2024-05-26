/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	exit
}

if targ=yeancat {
	newtime=-time
} else {
	newtime=time
}

if crit=1 and sett<5 {
	c_pos=c_yellow
}

if !targ=noone {
		x=targ.x
		y=targ.y
	} else {
		x+= (sign(room_width/2-x)*3/(size*(log10(sqrt(abs(damage)/10)+1)/2+1)))*clamp(point_distance(x,y,room_width/2, room_height/2)/1000,0,1)
		y+= (sign(room_height/2-y)*3/(size*(log10(sqrt(abs(damage)/10)+1)/2+1)))*clamp(point_distance(x,y,room_width/2, room_height/2)/1000,0,1)

	}
	c5a[1]=clamp((dur/(durset*1000000))*255,0,255)
	if c5a[2]>0 {
		c5a[2]-=2
		if c5a[2]<0 {
			c5a[2]=0
		}
	}
	
	if damage<0 {
	postring="+"
	c1a[0]=120
	c2a[0]=120
	c3a[0]=120
	c4a[0]=120
	c5a[0]=120
	c_pos=c_green
} else {
	if damage=0 {
		c1a[1]=0
	c2a[1]=0
	c3a[1]=0
	c4a[1]=0
	c5a[1]=0
	c_pos=c_white;
	}
}
if merc=1 {
	c_pos=c_ltgray
}

time+=.4
ran+=randshift;
size+=.0025*(1+crit/2);
if dur>0 {
	if on<=0 {
	dur-=delta_time*(2)/(2+crit)
	}
} else { 
	instance_destroy()
}
if on<=0 {
alph=clamp((dur/(durset*1000000)),0,1)
if alph<=0 and dur<=0 {
	if targ!=noone {
		targ.dam=noone
	}
	instance_destroy()
}
} else {
	alph=clamp((1-abs((127-c1a[1]))/127)*2,0,1)
}

if on=1 {
	if damage!=0 {
if c1a[1]<127 {
	c1a[1]+=clamp(abs(127-c1a[1]),1,2)
} else {
	if c1a[1]!=127 {
	c1a[1]-=clamp(abs(127-c1a[1]),1,2)
	}
}
	}
	
if c1a[2]<127 {
	c1a[2]+=clamp(abs(127-c1a[2]),1,2)
} else {
	if c1a[2]!=127 {
	c1a[2]-=clamp(abs(127-c1a[2]),1,2)
	}
}
	if abs(damage)!=0 {
if c2a[1]<127 {
	c2a[1]+=clamp(abs(127-c2a[1]),1,2)
} else {
	if c2a[1]!=127 {
	c2a[1]-=clamp(abs(127-c2a[1]),1,2)
	}

}
}
if c2a[2]<127 {
	c2a[2]+=clamp(abs(127-c2a[2]),1,2)
} else {
	if c2a[2]!=127 {
	c2a[2]-=clamp(abs(127-c2a[2]),1,2)
	}
}
	if abs(damage)!=0 {
if c3a[1]<127 {
	c3a[1]+=clamp(abs(127-c3a[1]),1,2)
} else {
	if c3a[1]!=127 {
	c3a[1]-=clamp(abs(127-c3a[1]),1,2)
	}
}
	}
if c3a[2]<127 {
	c3a[2]+=clamp(abs(127-c3a[2]),1,2)
} else {
	if c3a[2]!=127 {
	c3a[2]-=clamp(abs(127-c3a[2]),1,2)
	}
}
	if abs(damage)!=0 {
if c4a[1]<127 {
	c4a[1]+=clamp(abs(127-c4a[1]),1,2)
} else {
	if c4a[1]!=127 {
	c4a[1]-=clamp(abs(127-c4a[1]),1,2)
	}
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
	if c1a[1]<255 and abs(damage)!=0 {
	c1a[1]+=clamp(abs(255-c1a[1]),1,2)
}
if c1a[2]<255 {
	c1a[2]+=clamp(abs(255-c1a[2]),1,2)
}
if c2a[1]<255  and abs(damage)!=0 {
	c2a[1]+=clamp(abs(255-c2a[1]),1,2)
}
if c2a[2]<255 {
	c2a[2]+=clamp(abs(255-c2a[2]),1,2)
}
if c3a[1]<255  and abs(damage)!=0 {
	c3a[1]+=clamp(abs(255-c3a[1]),1,2)
}
if c3a[2]<255 {
	c3a[2]+=clamp(abs(255-c3a[2]),1,2)
}
if c4a[1]<255  and abs(damage)!=0 {
	c4a[1]+=clamp(abs(255-c4a[1]),1,2)
}
if c4a[2]<255  and abs(damage)!=0 {
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


if crit=0 or sett < 5 {

c5=make_color_hsv(c5a[0],c5a[1],c5a[2])
c1=make_color_hsv(c1a[0],(1-(0.5 * sin(2 * pi * (time) / 5 +pi/2)))*c5a[1]+c1a[1]*(0.5 * sin(2 * pi * (time*1) / 5)),(0.5 * sin(2 * pi * (time) / 5))*c5a[2]+c1a[2]*(1-(0.5 * sin(2 * pi * (time) / 5 +pi/2))))
c2=make_color_hsv(c2a[0],(1-(0.5 * sin(2 * pi * (time) / 5 +pi*3/4)))*c5a[1]+c2a[1]*(0.5 * sin(2 * pi * (time) / 5 +pi/4)),(0.5 * sin(2 * pi * (time) / 5 +pi/4))*c5a[2]+c2a[2]*(1-(0.5 * sin(2 * pi * (time) / 5 +pi*3/4))))
c3=make_color_hsv(c3a[0],(1-(0.5 * sin(2 * pi * (time) / 5)))*c5a[1]+c3a[1]*(0.5 * sin(2 * pi * (time) / 5 +pi/2)),(0.5 * sin(2 * pi * (time) / 5 +pi/2))*c5a[2]+c3a[2]*(1-(0.5 * sin(2 * pi * (time) / 5))))
c4=make_color_hsv(c4a[0],(1-(0.5 * sin(2 * pi * (time) / 5 +pi/4)))*c5a[1]+c4a[1]*(0.5 * sin(2 * pi * (time) / 5 +pi*3/4)),(0.5 * sin(2 * pi * (time) / 5 +pi*3/4))*c5a[2]+c4a[2]*(1-(0.5 * sin(2 * pi * (time) / 5 +pi/4))))
} else {
	c1=make_color_hsv((((color_get_hue(c1) / 2) * (1 + sin((sett / 10) * (2 * pi) / 25))) + 127.5),((color_get_saturation(c1) / 2) * (1 + sin((sett / 10) * (2 * pi) / 25)) + 127.5),((color_get_value(c1) / 2) * (1 + sin((sett / 10) * (2 * pi) / 25)) + 127.5))
	c2=make_color_hsv((((color_get_hue(c2) / 2) * (1 + sin((sett / 10) * (2 * pi) / 25))) + 127.5),((color_get_saturation(c2) / 2) * (1 + sin((sett / 10) * (2 * pi) / 25)) + 127.5),((color_get_value(c2) / 2) * (1 + sin((sett / 10) * (2 * pi) / 25)) + 127.5))
	c3=make_color_hsv((((color_get_hue(c3) / 2) * (1 + sin((sett / 10) * (2 * pi) / 25))) + 127.5),((color_get_saturation(c3) / 2) * (1 + sin((sett / 10) * (2 * pi) / 25)) + 127.5),((color_get_value(c3) / 2) * (1 + sin((sett / 10) * (2 * pi) / 25)) + 127.5))
	c4=make_color_hsv((((color_get_hue(c4) / 2) * (1 + sin((sett / 10) * (2 * pi) / 25))) + 127.5),((color_get_saturation(c4) / 2) * (1 + sin((sett / 10) * (2 * pi) / 25)) + 127.5),((color_get_value(c4) / 2) * (1 + sin((sett / 10) * (2 * pi) / 25)) + 127.5))
	c5=make_color_hsv((color_get_hue(c5)+(sett-5)*2)% 256,(color_get_saturation(c5)+(sett-5))% 256,(color_get_value(c5)+(sett-5)*2)% 256) ;
	var chue=(color_get_hue(c1)+color_get_hue(c2)+color_get_hue(c3)+color_get_hue(c4))/4
	var csat=(color_get_saturation(c1)+color_get_saturation(c2)+color_get_saturation(c3)+color_get_saturation(c4))/4
	var cval=(color_get_value(c1)+color_get_value(c2)+color_get_value(c3)+color_get_value(c4))/4
	var slo = 10
	c_pos=make_color_hsv(color_get_hue(c_yellow)*(clamp(1-(((sett-5)/slo*100) % 100)/100,0,1))+chue*(clamp(((sett-5)/slo) % 1,0,1)),color_get_saturation(c_yellow)*(clamp(1-(((sett-5)/slo*100) % 100)/100,0,1))+csat*(clamp(((sett-5)/slo) % 1,0,1)),color_get_value(c_yellow)*(clamp(1-(((sett-5)/slo*100) % 100)/100,0,1))+cval*(clamp(((sett-5)/slo) % 1,0,1)))
}

sett+=.25

direction=point_direction(room_width/2,room_height/2,x,y)
speed=clamp((time/2-1)*(1+instance_number(obj_damage)/150),0,100)*(global.room_speed_set/1000000*delta_time);