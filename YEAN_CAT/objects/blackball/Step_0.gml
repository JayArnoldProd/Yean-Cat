/// @description Insert description here
// You can write your code in this editor
visible=draw
if instance_exists(restar) {
direction=point_direction(room_width/2,room_height/2,x,y)
speed+=.1
exit
}
if global.pause=1 {
	if !instance_exists(restar) {
	speed=0;
	exit
	}
}
	
if dead=0 {


if att>0 {
	att-=delta_time*global.room_speed_set/60
} else {
	att=0 
	hitt=1
}

if rate>0 {
	rate-=1
} else {
	rate=rateset
	anicount+=1
}

if scale=0 {
	if master.vanish>0 {
		magnetplayer=magnetplayer*(1-master.vanish)
	}


xp=xp
	if movetype=9 {
		directional=1
if directional=1 {
if instance_exists(yeancat) {
	direction=point_direction(x,y,yeancat.x,yeancat.y);
	direction+=random_range(-5*varydir,5*varydir)*(master.luck)
	speed=clamp(spd*(4+(master.speedd+40)/50),0,40);
}
}
} else {
spd=clamp(spd*(4+(master.speedd+40)/50),0,40);
}
		
	
oblivious=power(oblivious,.999+master.level/1000)
maxhealth=healthh
healthlast=healthh
scale=sizee*.9+random(.2*sizee);
healthh=ceil(healthh*(scale+.1)*(.995+master.level/200))
damage=ceil(damage*(scale+.1)*(.995+master.level/200))
image_xscale=scale*.75
image_yscale=scale*.75
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
	x-=missed*master.speedd/2*(global.room_speed_set/1000000*delta_time)
} else {
	if col=c_ltgray {
		col=c_white
		missed=0
	}
}
if missed>0 {
	col=make_color_hsv(color_get_hue(c_gray)*missed+color_get_hue(c_white)*(1-missed),color_get_saturation(c_gray)*missed+color_get_saturation(c_white)*(1-missed),color_get_value(c_gray)*missed+color_get_value(c_white)*(1-missed));
	missed-=.01
	if missed=0 {
		col=c_ltgray
	}
	if grabbed=0 {
	x-=missed*master.speedd/2*(global.room_speed_set/1000000*delta_time)
	}
} else {
	if col=c_ltgray {
		col=c_white
		missed=0
	}
}
if instance_exists(yeancat) {
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
if grabbed=0 {
	if directional=0 {
		if instance_exists(yeancat) {
			if magnetplayer>0 {
		var blendmove=clamp(distance_to_object(yeancat)/(100*magnetplayer*spd),0,1)
		} else {
			var blendmove=1
		}
		} else {
			var blendmove=1
		}

	if movetype=0 {
x-=((((master.speedd+32)/39))*varispeed*spd+1)*drift*(global.room_speed_set/1000000*delta_time)*blendmove
	}
		if movetype=1 {
x+=((((master.speedd+32)/39))*varispeed*spd+1)*drift*(global.room_speed_set/1000000*delta_time)*blendmove
	}
		if movetype=2 {
y-=((((master.speedd+32)/39))*varispeed*spd+1)*drift*.56*(global.room_speed_set/1000000*delta_time)*blendmove
	}
		if movetype=3 {
y+=((((master.speedd+32)/39))*varispeed*spd+1)*drift*.56*(global.room_speed_set/1000000*delta_time)*blendmove
	}
		if movetype=4 {
x-=(((((master.speedd+32)/39))*varispeed*spd+1)*drift)/2*(global.room_speed_set/1000000*delta_time)*blendmove
y+=(((((master.speedd+32)/39))*varispeed*spd+1)*drift)/2*(global.room_speed_set/1000000*delta_time)*.56*blendmove
	}
		if movetype=5 {
x-=(((((master.speedd+32)/39))*varispeed*spd+1)*drift)/2*(global.room_speed_set/1000000*delta_time)*blendmove
y-=(((((master.speedd+32)/39))*varispeed*spd+1)*drift)/2*(global.room_speed_set/1000000*delta_time)*.56*blendmove
	}
		if movetype=6 {
x+=(((((master.speedd+32)/39))*varispeed*spd+1)*drift)/2*(global.room_speed_set/1000000*delta_time)*blendmove
y-=(((((master.speedd+32)/39))*varispeed*spd+1)*drift)/2*(global.room_speed_set/1000000*delta_time)*.56*blendmove
	}
		if movetype=7 {
x+=(((((master.speedd+32)/39))*varispeed*spd+1)*drift)/2*(global.room_speed_set/1000000*delta_time)*blendmove
y+=(((((master.speedd+32)/39))*varispeed*spd+1)*drift)/2*(global.room_speed_set/1000000*delta_time)*.56*blendmove
	}
if movetype=9 {
	if instance_exists(yeancat) {
			
		if passplayer!=1 and passplayer !=2 {	
			xdi=sign(yeancat.x-x)*(master.speedd+10)/30
			ydi=sign(yeancat.y-y)*(master.speedd+10)/30
			x+=xdi*followplayer/100*(global.room_speed_set/1000000*delta_time)
			y+=ydi*followplayer/100*(global.room_speed_set/1000000*delta_time)
		} else {
			if passplayer=1 {
			xdi=sign(yeancat.x-x)*(master.speedd+10)/30
			ydi=sign(yeancat.y-y)*(master.speedd+10)/30
			x+=xdi*followplayer/100*(global.room_speed_set/1000000*delta_time)
			y+=ydi*followplayer/100*(global.room_speed_set/1000000*delta_time)
			if distance_to_object(yeancat)<20 {
				passplayer=2
				x+=xdi*followplayer/100*(global.room_speed_set/1000000*delta_time)
				y+=ydi*followplayer/100*(global.room_speed_set/1000000*delta_time)
			}
			} else {
			}
		}
	}
	
}
strafetime+=.005/strafemult*(0.5 * sin(2 * pi * time / 5)+.75)+.01
	time+=randomtime/20*(0.5 * sin(2 * pi * strafetime / 5)+.75)+.01
	strafe=strafemax*(0.5 * sin(2 * pi * strafetime / 5))*strafemult
	strafeosc= 5*(0.5 * sin(2 * pi * time / 5))+.1
	var yyy=3*varispeed*strafeosc*strafe*spd*(master.speedd/30+1)+yrand

if instance_exists(yeancat) {
if master.vert != 0 {
	y-=(1+varispeed/2)*master.vert*(1+yeancat.vspeedmax/2)*global.madj*(global.room_speed_set/1000000*delta_time)*playerdrift
}

if master.horz != 0 {
	x-=(1+varispeed/2)*master.horz*(1+yeancat.hspeedmax/2)*global.madj*(global.room_speed_set/1000000*delta_time)*playerdrift
}
}  else {
	//y+=yyy*(global.room_speed_set/1000000*delta_time)
}
var y2=0
if instance_exists(yeancat) {
	//yrand*=.999
	if movetype=0  or movetype=4{

	y2=(varispeed*((master.speedd+10)/30)*spd/(clamp(abs(yeancat.x-x),1920/2,1920*2)/(1920*2)))*sign(yeancat.y-y)*(abs(yeancat.y-y)/(1920*2))
	
y+=(y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2)))*(global.room_speed_set/1000000*delta_time)
x-=abs(yyy)*(global.room_speed_set/1000000*delta_time)*sign(x-yeancat.x)*(abs(yeancat.y-y)/(1080))
	}
	if movetype=1  or movetype=6{
	y2=(varispeed*((master.speedd+10)/30)*spd/(clamp(abs(yeancat.x-x),1920/2,1920*2)/(1920*2)))*sign(yeancat.y-y)*(abs(yeancat.y-y)/(1920*2))

y+=(y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2)))*(global.room_speed_set/1000000*delta_time)
x+=(abs(yyy)/2)*(global.room_speed_set/1000000*delta_time)*sign(yeancat.x-x)*(abs(yeancat.y-y)/(1080))
	}
	if movetype=2 or movetype=5 {

	y2=(varispeed*((master.speedd+10)/30)*spd/(clamp(abs(yeancat.y-y),1080/2,1080*2)/2160))*sign(yeancat.x-x)*(abs(yeancat.x-x)/(1080*2))

x+=(y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2)))*(global.room_speed_set/1000000*delta_time)
y-=(abs(yyy)/2)*(global.room_speed_set/1000000*delta_time)*sign(y-yeancat.y)*(abs(yeancat.x-x)/(1920))
	}
	if movetype=3 or movetype=7{
	y2=(varispeed*((master.speedd+10)/30)*spd/(clamp(abs(yeancat.y-y),1080/2,1080*2)/2160))*sign(yeancat.x-x)*(abs(yeancat.x-x)/(1080*2))

x+=(y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2)))*(global.room_speed_set/1000000*delta_time)
y+=(abs(yyy)/2)*(global.room_speed_set/1000000*delta_time)*sign(yeancat.y-y)*(abs(yeancat.x-x)/(1920))
	}
}
	} else {
		time+=.2*global.room_speed_set/60
		//directional
	//if movetype=9 
	{
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
			if instance_exists(yeancat) {
							if master.vert != 0 {
								y-=(1+varispeed/2)*master.vert*(1+yeancat.vspeedmax/2)*global.madj
							}
								if master.horz != 0 {
								x-=(1+varispeed/2)*master.horz*(1+yeancat.hspeedmax/2)*global.madj
							}
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

if x<-500 {
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


if healthh!=healthlast and master.damagenumbers = 1 {
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
		if instance_exists(yeancat) {
		if master.soundmanager[sndmanid,5]<1 {
			if !audio_is_playing(speak) {
				if dead=0 {
		yeancat.responding=(sndmanid-1)*6+5
		speak = audio_play_sound_on(s_emit,snd[5,master.charselect],0,0)
		master.soundmanager[sndmanid,5]=round(5+random(5))
				}
			}
	}
	}
	dead=1

}

if playerdrift > 0 {
	if instance_exists(yeancat) {
	x-=(yeancat.x-yeancat.xprevious)*playerdrift
	y-=(yeancat.y-yeancat.yprevious)*playerdrift
	}
	//playerdirection needed
	x-=1*master.speedd/10*playerdrift
}
} else {
	alph-=.02*(global.room_speed_set/1000000*delta_time)
	direction=point_direction(room_width/2,room_height/2,x,y)
	speed+=.02
	bodyangle+=clamp(2-speed,0,2)
	col=merge_color(c_red,c_black,1-alph)
	image_xscale*=.99
	image_yscale*=.99
	if alph<0 {
		
		if !audio_is_playing(speak) {
			instance_destroy()
		}
	}
}
if magnetplayer>0 {
	if instance_exists(yeancat) {
		var dcat= distance_to_object(yeancat)
	if dcat < 100*magnetplayer*spd {
		x+=clamp(spd*(global.room_speed_set/1000000*delta_time)*(yeancat.x-x)*(1-dcat/(100*magnetplayer*spd))/30,-spd,spd)
		y+=clamp(spd*(global.room_speed_set/1000000*delta_time)*(yeancat.y-y)*(1-dcat/(100*magnetplayer*spd))/30,-spd,spd)
	}
	}
}
