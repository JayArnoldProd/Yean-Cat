/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	speed=0;
	exit
	
} else {
	if speed=0 {
		speed=clamp(15+(master.speedd/15),0,20);
	}
}

if rate>0 {
	rate-=1
} else {
	rate=rateset
	anicount+=1
}

if scale=0 {
scale=sizee*1
healthh=ceil(healthh*(scale+.1)*power(.995+master.level/200,1.2))
damage=ceil(damage*(scale+.1)*(.995+master.level/300))
xp=ceil(xp*(scale+.1)*(.98+master.level/50))
oblivious=power(oblivious,.99+master.level/100)
maxhealth=healthh
healthlast=healthh
followlength=1+(2/master.luck)
followplayer=3/master.luck
var way=choose(-1,1)
if way=-1 {
x=+room_width/2+random_range(-1920*master.camscale/2,1920*master.camscale/2)
y=choose(-1,1)*1080*master.camscale/2+room_height/2
} else {
y=room_height/2+random_range(-1080*master.camscale/2,1080*master.camscale/2)
x=choose(-1,1)*1920*master.camscale/2+room_width/2
}
if directional=1 {
	if movetype=9 {
		if instance_exists(yeancat) {
	direction=point_direction(x,y,yeancat.x,yeancat.y);
	direction+=random_range(-5*varydir,5*varydir)*(master.luck)
	speed=5+(master.speedd)/50;
		}
	}
}
}

//if x>1950 and x<2200 {
//	y = random(room_height+1000)-500
//}

if anicount=4 {
	anicount = 0
}
if col = c_red {
	damtime-=1
	if damtime<0 {
		col=c_white
		damtime=5
	}
}
if col = c_silver {
	damtime-=1
	if damtime<0 {
		col=c_white
		damtime=5
	}
}
if missed>0 {
	col=make_color_hsv(color_get_hue(c_gray)*missed+color_get_hue(c_white)*(1-missed),color_get_saturation(c_gray)*missed+color_get_saturation(c_white)*(1-missed),color_get_value(c_gray)*missed+color_get_value(c_white)*(1-missed));
	missed-=.01
	if missed=0 {
		col=c_ltgray
	}
	if grabbed=0 {
	x-=missed*master.speedd/2
	}
} else {
	if col=c_ltgray {
		col=c_white
		missed=0
	}
}


if instance_exists(yeancat) {
	//peny miss
	if distance_to_object(yeancat)<100 {
		if close!=-1 {
		close=1
		}
	}
	if distance_to_object(yeancat)>600 {
		if close=1 {
				with (yeancat) {
audio_stop_sound(soundxtra)
soundxtra = audio_play_sound_on(s_emit,pennymisssound,0,0);
if master.charselect !=0 {
	//mute scream
	//replace this with individual sounds for each character
	audio_sound_gain(soundxtra,0,0);
}
	}
			close=-1
		}
	} 
	if sop=1 {  
	if place_meeting(x,y,yeancat) {
	diii = 1
	} else {
		diii=0
	}
	}
} else {
	diii = 0
}
if !(sop=1 and diii=1) {
if grabbed<=0 {
	if directional=0 {
	if movetype=0 {
x-=((((master.speedd+5)/15))*varispeed*spd+1)*drift
	}
		if movetype=1 {
x+=((((master.speedd+5)/15))*varispeed*spd+1)*drift
	}
		if movetype=2 {
y-=((((master.speedd+5)/15))*varispeed*spd+1)*drift
	}
		if movetype=3 {
y+=((((master.speedd+5)/15))*varispeed*spd+1)*drift
	}
		if movetype=4 {
x-=(((((master.speedd+5)/15))*varispeed*spd+1)*drift)/2
y+=(((((master.speedd+5)/15))*varispeed*spd+1)*drift)/2
	}
		if movetype=5 {
x-=(((((master.speedd+5)/15))*varispeed*spd+1)*drift)/2
y-=(((((master.speedd+5)/15))*varispeed*spd+1)*drift)/2
	}
		if movetype=6 {
x+=(((((master.speedd+5)/15))*varispeed*spd+1)*drift)/2
y-=(((((master.speedd+5)/15))*varispeed*spd+1)*drift)/2
	}
		if movetype=7 {
x+=(((((master.speedd+5)/15))*varispeed*spd+1)*drift)/2
y+=(((((master.speedd+5)/15))*varispeed*spd+1)*drift)/2
	}
if movetype=9 {
	if instance_exists(yeancat) {
			
		if passplayer!=1 and passplayer !=2 {	
			xdi=sign(yeancat.x-x)*(master.speedd+10)/20*drift
			ydi=sign(yeancat.y-y)*(master.speedd+10)/20*drift
			x+=xdi*followplayer/100
			y+=ydi*followplayer/100
		} else {
			if passplayer=1 {
				if time>followlength*20 {
							passplayer=2
						}
			xdi=sign(yeancat.x-x)*(master.speedd+10)/20*drift
			ydi=sign(yeancat.y-y)*(master.speedd+10)/20*drift
			x+=xdi*followplayer/100
			y+=ydi*followplayer/100
			if distance_to_object(yeancat)<50 {
				passplayer=2
				x+=xdi*followplayer/100
				y+=ydi*followplayer/100
			}
			} else {
			}
		}
	}
	
}
strafetime+=.005/strafemult*(0.5 * sin(2 * pi * time / 5)+.75)+.01
	time+=.2*global.room_speed_set/60
	strafe=strafemax*(0.5 * sin(2 * pi * strafetime / 5))*strafemult
	strafeosc= 5*(0.5 * sin(2 * pi * time / 5))+.1
	var yyy=3*varispeed*strafeosc*strafe*spd*(master.speedd/50+1)+yrand

if instance_exists(yeancat) {
if master.vert != 0 {
	y-=(1+varispeed/2)*master.vert*(1+yeancat.vspeedmax/2)*global.madj
}

if master.horz != 0 {
	x-=(1+varispeed/2)*master.horz*(1+yeancat.hspeedmax/2)*global.madj
}
}  else {
	y+=yyy
}
var y2=0
if instance_exists(yeancat) {
	//yrand*=.999
	if movetype=0  or movetype=4{
if y<yeancat.y {
	y2=(varispeed*((master.speedd+10)/10)*spd*(abs(yeancat.y-y))/100+1)/2
} else {
	
	y2=-(varispeed*((master.speedd+10)/10)*spd*(abs(yeancat.y-y))/100+1)/2
}
y+=y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2))
x-=abs(yyy)
	}
	if movetype=1  or movetype=6{
		if y<yeancat.y {
	y2=(varispeed*((master.speedd+10)/10)*spd*(abs(yeancat.y-y))/100+1)/2
} else {
	
	y2=-(varispeed*((master.speedd+10)/10)*spd*(abs(yeancat.y-y))/100+1)/2
}
y+=y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2))
x+=abs(yyy)/2
	}
	if movetype=2 or movetype=5 {
		if x<yeancat.x {
	y2=(varispeed*((master.speedd+10)/10)*spd*(abs(yeancat.x-x))/100+1)/2
} else {
	
	y2=-(varispeed*((master.speedd+10)/10)*spd*(abs(yeancat.x-x))/100+1)/2
}
x+=y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2))
y-=abs(yyy)/2
	}
	if movetype=3 or movetype=7{
				if x<yeancat.x {
	y2=(varispeed*((master.speedd+10)/10)*spd*(abs(yeancat.x-x))/100+1)/2
} else {
	
	y2=-(varispeed*((master.speedd+10)/10)*spd*(abs(yeancat.x-x))/100+1)/2
}
x+=y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2))
y+=abs(yyy)/2
	}
}
	} else {
		time+=.2*global.room_speed_set/60
		//directional
	if movetype=8 {
		if followplayer>0 {
			
			if passplayer!=1 and passplayer !=2 {
				if instance_exists(yeancat) {
			var dirtop = point_direction(x,y,yeancat.x,yeancat.y)
			
				direction+=(dirtop-direction)*sqr(followplayer/100)
				if direction>360 {
					direction=0
				}
				if direction<0 {
					direction=360
				}
			} else {
				var dirtop = direction
			}
							if master.vert != 0 {
								y-=(1+varispeed/2)*master.vert*(1+yeancat.vspeedmax/2)*global.madj
							}
								if master.horz != 0 {
								x-=(1+varispeed/2)*master.horz*(1+yeancat.hspeedmax/2)*global.madj
							}
			} else {
				if instance_exists(yeancat) {
					if passplayer=1 {
						if time>followlength*20 {
							passplayer=2
						}
						var dirtop = point_direction(x,y,yeancat.x,yeancat.y)
			if master.vert != 0 {
								y-=(1+varispeed/2)*master.vert*(1+yeancat.vspeedmax/2)*global.madj
							}
								if master.horz != 0 {
								x-=(1+varispeed/2)*master.horz*(1+yeancat.hspeedmax/2)*global.madj
							}
				direction+=(dirtop-direction)*sqr(followplayer/100)
				if direction>360 {
					direction=0
				}
				if direction<0 {
					direction=360
				}
				if distance_to_object(yeancat)<50 {
					passplayer=2
				}
						
					} else {
							if master.vert != 0 {
								y-=(1+varispeed/2)*master.vert*(1+yeancat.vspeedmax/2)*global.madj
							}
								if master.horz != 0 {
								x-=(1+varispeed/2)*master.horz*(1+yeancat.hspeedmax/2)*global.madj
							}
					}
					
				}
			}
		
			//if direction>=0 and direction <= 90 {
			//	direction+=(dirtop-direction)*(followplayer/100)
			//}
			//if direction>90 and direction <= 180 {
			//	direction+=(dirtop-direction)*(followplayer/100)
			//}
			//if direction>180 and direction <= 90 {
			//	direction+=(dirtop-direction)*(followplayer/100)
			//}
			//if direction>270 and direction <= 360 {
			//	direction+=(dirtop-direction)*(followplayer/100)
			//}
		} else {
			
		}

	if speed/2<5+clamp(master.speedd/15,0,15)*drift {
		if diii!=1 {
		speed+=.05*drift*(clamp((master.speedd)/30,0,5))/(1+speed/5)
		
		}
		if speed>=30 {
			speed=30
		}
	}
	
	}
	}
} else {
	speed=0
}
} else {
	speed=0
}

if x<-100 {
	if dam != noone {
		dam.targ=noone
		dam=noone
	}
	instance_destroy()
}

if dam != noone {
	dam.targ=self
	dam.x=(dam.x*1+x*2)/3
	dam.y=(dam.y*1+y*2)/3
}

if healthh>maxhealth {
	healthh=maxhealth
}


if healthh!=healthlast  and master.damagenumbers = 1 {
	if dam=noone {
	dam= instance_create_layer(x,y,"damage",obj_damage)
	dam.targ=self
	if crit=1 {
		dam.crit=1
		crit=0
	}
	dam.damage=healthlast-healthh
	} else {
		if sign(dam.damage) != sign(healthlast-healthh) {
			dam.targ=noone
			dam=noone
			dam= instance_create_layer(x,y,"damage",obj_damage)
			dam.targ=self
			if crit=1 {
		dam.crit=1
		crit=0
	}
			dam.damage=healthlast-healthh
		} else {
		dam.damage+=healthlast-healthh
			if crit=1 {
		dam.crit=1
		crit=0
	}
		}
	}
}

healthlast=healthh
if audio_is_playing(hurtsnd) {
audio_sound_pitch(hurtsnd,1*(1-master.lower/1000)*global.room_speed_set/60)
}
if healthh<=0 {
	instance_destroy()
}

if playerdrift > 0 {
	if instance_exists(yeancat) {
	x-=(yeancat.x-yeancat.xprevious)*playerdrift
	y-=(yeancat.y-yeancat.yprevious)*playerdrift
	}
	//playerdirection needed
	x-=1*master.speedd/10*playerdrift
}