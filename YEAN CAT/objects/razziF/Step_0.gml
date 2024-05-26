/// @description Insert description here
// You can write your code in this editor
visible=draw
if instance_exists(yeancat) {
	dcat = distance_to_object(yeancat)
	pflying=yeancat.flying
}
if abs(hdist)+abs(vdist)>20000 {
	instance_destroy()
	exit
}
if instance_exists(restar) {
direction=point_direction(room_width/2,room_height/2,x,y)
speed+=.1
exit
}
var facing=1
if global.pause=1 or !instance_exists(master) {
	if !instance_exists(restar) {
	speed=0;
	exit
	}
}
worldd=obj_terrain.terrain
if direction>90 and direction<270 {
facing=-1
} else {
facing=1
}
var clop=((600-obj_terrain.lowercloud)/600)
var spaci=obj_terrain.spacing
var enemypos=obj_terrain.playerpos
var terrainheight=obj_terrain.terrainheight
var arl=array_length(obj_terrain.terrain)-2
var index1 = 1+floor((x+spaci*(sign(enemypos)*(abs(enemypos/spaci)-floor(abs(enemypos/spaci))))) / spaci);
var index2 = 1+ceil((x+spaci*(sign(enemypos)*(abs(enemypos/spaci)-floor(abs(enemypos/spaci))))) / spaci);
var fract = frac((x+spaci*(sign(enemypos)*(abs(enemypos/spaci)-floor(abs(enemypos/spaci))))) / spaci);
if (index1 >= 0 && index2 < arl) {
    var height1 = worldd[index1] * terrainheight;
    var height2 = worldd[index2] * terrainheight;
    enemy_height_fromground = (obj_terrain.y-spaci*1+lerp(height1, height2, fract) - (y))*clop+power(clamp(obj_terrain.playeraltitude+obj_terrain.player_height_fromground,0,99999),.85);
	enemy_angle_onground=point_direction(0,height1,spaci,height2)

}
ground_yvalue_belowenemy=enemy_height_fromground+y
if gravstr>0 {
	//if onground=1 {

	var tarang=enemy_angle_onground
	var tarang2=point_direction(0,0,lengthdir_x(direction,speed),lengthdir_y(direction,speed))+90*abs(facing-1)
if rotatebody!=(tarang * (1/(1+(enemy_height_fromground+enemyaltitude)/200))+ tarang2 * (1-1/(1+(enemy_height_fromground+enemyaltitude)/200))) {
var _diff = angle_difference(tarang, rotatebody);
var _diff2 = angle_difference(tarang2, rotatebody);

rotatebody += (_diff * 0.5 * (1/(1+(enemy_height_fromground+enemyaltitude)/200))+_diff2 * 0.1 * (1-1/(1+(enemy_height_fromground+enemyaltitude)/200)))*(1/(1+(enemy_height_fromground)/20000))
} else {
	rotatebody=(tarang * (1/(1+(enemy_height_fromground+enemyaltitude)/200))+ tarang2 * (1-1/(1+(enemy_height_fromground+enemyaltitude)/200)))
}
	//}














} else {
	y+=(global.room_speed_set/1000000*delta_time)*_vspeed
}

audio_emitter_position(s_emit,x,y,0);
audio_emitter_gain(s_emit,.75*master.mastervol*master.dialougevol);
if dead=0 {
if scale=0 {
scale=sizee*.9+random(.2*sizee);
healthh=ceil(healthh*(scale+.1)*(.995+master.level/200))
damage=ceil(damage*(scale+.1)*(.995+master.level/200))
xp=xp
oblivious=power(oblivious,.999+master.level/1000)
maxhealth=healthh
healthlast=healthh
playerdrift*=.9+random(200)/1000
image_xscale=scale*.8
image_yscale=scale*.8
	if movetype=9 {
		directional=1
if directional=1 {
if instance_exists(yeancat) {
	direction=point_direction(x,y,yeancat.x,yeancat.y);
	speed=clamp(spd*(4+(master.speedd+10)/39),0,15);
}
	}
} else {
spd=clamp(spd*(.9+(master.speedd+15)/50+random(200)/1000),0,40);
}
}

//dialogue
//spawn
//random
//closetodeath
//proximity
//successfulhit
//death
if suchit=1 {
		if instance_exists(yeancat) {
		if master.soundmanager[sndmanid,4]=0 {
			if !audio_is_playing(speak) {
		yeancat.responding=(sndmanid-1)*6+4
		speak = audio_play_sound_on(s_emit,snd[4,master.charselect],0,0)
		master.soundmanager[sndmanid,4]=round(5+random(5))
			}
	}
	}
	suchit=0
}

//good morning kanye
if walk>100 and walk<110 {
	if instance_exists(yeancat) {
		if master.soundmanager[sndmanid,0]=0 {
			if !audio_is_playing(speak) {
		yeancat.responding=(sndmanid-1)*6
		speak = audio_play_sound_on(s_emit,snd[0,master.charselect],0,0)
		master.soundmanager[sndmanid,0]=round(5+random(5))
			}
	}
	}
}

//r u mad at jimmy
if walk>250 and walk<260 {
	if instance_exists(yeancat) {
		if master.soundmanager[sndmanid,1]<1 {
			if !audio_is_playing(speak) {
		yeancat.responding=(sndmanid-1)*6+1
		speak = audio_play_sound_on(s_emit,snd[1,master.charselect],0,0)
		master.soundmanager[sndmanid,1]=round(5+random(5))
			}
	}
	}
}

//do you have anything to say
if walk>320 and walk<610 {
	if instance_exists(yeancat) {
	if dcat<200 {
		if master.soundmanager[sndmanid,3]<1 {
			if !audio_is_playing(speak) {
		yeancat.responding=(sndmanid-1)*6+3
		speak = audio_play_sound_on(s_emit,snd[3,master.charselect],0,0)
		master.soundmanager[sndmanid,3]=round(5+random(5))
			}
	}
	}
	}
}
//comeon kanye
if healthh<10 {
	if instance_exists(yeancat) {
	if master.soundmanager[sndmanid,2]=0 {
		if !audio_is_playing(speak) {
		yeancat.responding=(sndmanid-1)*6+2
		speak = audio_play_sound_on(s_emit,snd[2,master.charselect],0,0)
		master.soundmanager[sndmanid,2]=round(5+random(5))
		}
	}
	}
}

if instance_exists(yeancat) {
if point_direction(x,y,yeancat.x,yeancat.y)<90 or point_direction(x,y,yeancat.x,yeancat.y) > 270{
	image_xscale=-scale*.65*sizee
	image_yscale=scale*.65*sizee
	dir=1
} else {
	image_xscale=scale*.65*sizee
	image_yscale=scale*.65*sizee
	dir=0
}
}
if hdist=0 and vdist=0 and dcat<500 and flashes=1 {

flashtime-=1*(global.room_speed_set/1000000*delta_time)
if flashtime<0 {
	flashtime=flashtimeset
	var fla = round(random(2))
	if fla=0 {
		flashsound=audio_play_sound_on(s_emit,flash1,0,0)
	}
	if fla=1 {
		flashsound=audio_play_sound_on(s_emit,flash2,0,0)
	}
	if fla=2 {
		flashsound=audio_play_sound_on(s_emit,flash3,0,0)
	}
	missed=0
	if grabbed != 1 {
	if dir=1 {
	var fl = instance_create_layer(x+20,y-50,"damage",flash_obj)
	fl.dir=1
	fl.siz=scale*.9+random(.2)*scale
	fl.damage=damage
	fl.sndmanid=sndmanid
	fl.owner=self
	} else {
	var fl = instance_create_layer(x-20,y-50,"damage",flash_obj)
	fl.dir=0
	fl.siz=scale*.9+random(.2)*scale
	fl.damage=damage
	fl.sndmanid=sndmanid
	fl.owner=self
	}
	}
}
}



if rate>0 {
	rate-=1
} else {
	rate=rateset
	anicount+=1
}
walk+=1*((master.speedd+10)/20)
legangle = (30*(1-legoffset*4/3)) * sin(2 * pi * walk / 60) + (legoffset*30)



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
	var outh = 0
	var outv = 0
	if !abs(hdist)=0 {
		outh = 1
	}
	if !abs(vdist)=0 {
		outv = 1
	}
if !(sop=1 and diii=1) {
	var blendmove=0
if grabbed=0 {

	if directional=0 {
		if instance_exists(yeancat) {
			if magnetplayer>0 {
		blendmove=clamp(dcat/(100*magnetplayer*spd),0,1)
		} else {
			blendmove=1
		}
		} else {
			blendmove=1
		}
var dddd=((((master.speedd+32)/39))*varispeed*spd+1)*drift*(global.room_speed_set/1000000*delta_time)*blendmove

	if movetype=0 {
		x-=dddd*(1-outh)
hdist-=dddd*(outh)
	}
		if movetype=1 {
x+=dddd*(1-outh)
hdist+=dddd*(outh)
	}
		if movetype=2 {
			if flying=1 and enemy_height_fromground+enemyaltitude>0 {
y-=.56*dddd*(1-outh)
vdist-=.56*dddd*(outh)
			}
	}
		if movetype=3 {
			if flying=1 and enemy_height_fromground+enemyaltitude>0 {
y+=.56*dddd*(1-outh)
vdist+=.56*dddd*(outh)
			}
	}
		if movetype=4 {
x+=dddd*(1-outh)
hdist+=dddd*(outh)
if flying=1 and enemy_height_fromground+enemyaltitude>0 {
y+=.56*dddd*(1-outh)
vdist+=.56*dddd*(outh)
}
	}
		if movetype=5 {
x-=dddd*(1-outh)
hdist-=dddd*(outh)
if flying=1 and enemy_height_fromground+enemyaltitude>0 {
y-=.56*dddd*(1-outh)
vdist-=.56*dddd*(outh)
}
	}
		if movetype=6 {
x+=dddd*(1-outh)
hdist+=dddd*(outh)
if flying=1 and enemy_height_fromground+enemyaltitude>0 {
y-=.56*dddd*(1-outh)
vdist-=.56*dddd*(outh)
}
	}
		if movetype=7 {
x+=dddd*(1-outh)
hdist+=dddd*(outh)
if flying=1 and enemy_height_fromground+enemyaltitude>0 {
y+=.56*dddd*(1-outh)
vdist+=.56*dddd*(outh)
}
	}
if movetype=9 {
	if instance_exists(yeancat) {
			
		if passplayer!=1 and passplayer !=2 {	
			xdi=sign(yeancat.x-x)*(master.speedd+10)/39
			ydi=sign(yeancat.y-y)*(master.speedd+10)/39
			x+=xdi*followplayer/100*(global.room_speed_set/1000000*delta_time)*(1-outh)
			y+=ydi*followplayer/100*(global.room_speed_set/1000000*delta_time)*(1-outh)
		} else {
			if passplayer=1 {
			xdi=sign(yeancat.x-x)*(master.speedd+10)/39
			ydi=sign(yeancat.y-y)*(master.speedd+10)/39
			x+=xdi*followplayer/100*(global.room_speed_set/1000000*delta_time)*(1-outh)
			y+=ydi*followplayer/100*(global.room_speed_set/1000000*delta_time)*(1-outh)
			if dcat<20 {
				passplayer=2
				x+=xdi*followplayer/100*(global.room_speed_set/1000000*delta_time)*(1-outh)
				y+=ydi*followplayer/100*(global.room_speed_set/1000000*delta_time)*(1-outh)
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

var y2=0
if x>room_width/2-1/2*room_width*master.camscale or x<room_width/2+1/2*room_width*master.camscale or y>room_height/2-room_height*1/2*master.camscale or y<room_height/2+room_height*1/2*master.camscale {
	outh = 0
	outv = 0
	if !abs(hdist)=0 {
		outh = 1
	}
	if !abs(vdist)=0 {
		outv = 1
	}
}	
if instance_exists(yeancat) {
	//yrand*=.999
	var hsign=sign(hdist)
	if hdist=0 {
		hsign=0
	}
var vsign=sign(vdist)
if vdist=0 {
		vsign=0
	}
	if movetype=0  or movetype=4{

	y2=(varispeed*((master.speedd+10)/39)*spd/(clamp(abs(yeancat.x-x),1920/2,1920*2)/(1920*2)))*sign(yeancat.y-y)*(abs(yeancat.y-y)/(1920*2))
x-=blendmove*abs(yyy)*(global.room_speed_set/1000000*delta_time)*sign(x-yeancat.x)*(abs(yeancat.y-y)/(1080))*(1-outh)
hdist-=blendmove*abs(yyy)*(global.room_speed_set/1000000*delta_time)*sign(x-yeancat.x)*(abs(yeancat.y-y)/(1080))*(outh)

	
	if flying=1 and enemy_height_fromground+enemyaltitude>0 {

y+=blendmove*(y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2)))*(global.room_speed_set/1000000*delta_time)*(1-outh)
vdist+=blendmove*(y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2)))*(global.room_speed_set/1000000*delta_time)*(outh)
}
}
	if movetype=1  or movetype=6{
	y2=(varispeed*((master.speedd+10)/39)*spd/(clamp(abs(yeancat.x-x),1920/2,1920*2)/(1920*2)))*sign(yeancat.y-y)*(abs(yeancat.y-y)/(1920*2))
if flying=1 and enemy_height_fromground+enemyaltitude>0 {
y+=blendmove*(y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2)))*(global.room_speed_set/1000000*delta_time)*(1-outh)
vdist+=blendmove*(y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2)))*(global.room_speed_set/1000000*delta_time)*(outh)
}
x+=blendmove*(abs(yyy)/2)*(global.room_speed_set/1000000*delta_time)*sign(yeancat.x-x)*(abs(yeancat.y-y)/(1080))*(1-outh)
hdist+=blendmove*(abs(yyy)/2)*(global.room_speed_set/1000000*delta_time)*sign(yeancat.x-x)*(abs(yeancat.y-y)/(1080))*(outh)

}
	if movetype=2 or movetype=5 {

	y2=(varispeed*((master.speedd+10)/39)*spd/(clamp(abs(yeancat.y-y),1080/2,1080*2)/2160))*sign(yeancat.x-x)*(abs(yeancat.x-x)/(1080*2))
if flying=1 and enemy_height_fromground+enemyaltitude>0 {
y-=blendmove*(abs(yyy)/2)*(global.room_speed_set/1000000*delta_time)*sign(y-yeancat.y)*(abs(yeancat.x-x)/(1920))*(1-outh)
vdist-=blendmove*(abs(yyy)/2)*(global.room_speed_set/1000000*delta_time)*sign(y-yeancat.y)*(abs(yeancat.x-x)/(1920))*(outh)
}
x+=blendmove*(y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2)))*(global.room_speed_set/1000000*delta_time)*(1-outh)
hdist+=blendmove*(y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2)))*(global.room_speed_set/1000000*delta_time)*(outh)

}
	if movetype=3 or movetype=7{
	y2=(varispeed*((master.speedd+10)/39)*spd/(clamp(abs(yeancat.y-y),1080/2,1080*2)/2160))*sign(yeancat.x-x)*(abs(yeancat.x-x)/(1080*2))

x+=blendmove*(y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2)))*(global.room_speed_set/1000000*delta_time)*(1-outh)
hdist+=blendmove*(y2*(1-oblivious)*(1-master.vanish)+yyy*(1-((1-(master.vanish))/(oblivious+1)-oblivious/2)))*(global.room_speed_set/1000000*delta_time)*(outh)
if flying=1 and enemy_height_fromground+enemyaltitude>0 {
y+=blendmove*(abs(yyy)/2)*(global.room_speed_set/1000000*delta_time)*sign(yeancat.y-y)*(abs(yeancat.x-x)/(1920))*(1-outh)
vdist+=blendmove*(abs(yyy)/2)*(global.room_speed_set/1000000*delta_time)*sign(yeancat.y-y)*(abs(yeancat.x-x)/(1920))*(outh)
}

}
if vsign=1 {
if vdist<0{
	vdist=0
}
} else {
	if vdist>0{
	vdist=0
}
}
if hsign=1 {
if hdist<0{
	hdist=0
}
} else {
	if hdist>0{
	hdist=0
}
}
}

	} else {
		//directional
	//if movetype=9 
	if x>room_width/2-1/2*room_width*master.camscale or x<room_width/2+1/2*room_width*master.camscale or y>room_height/2-room_height*1/2*master.camscale or y<room_height/2+room_height*1/2*master.camscale {
		if followplayer>0 {
			
			if passplayer!=1 and passplayer !=2 {
				if instance_exists(yeancat) {
			var dirtop = point_direction(x,y,yeancat.x,yeancat.y)
			
				direction+=(dirtop-direction)*(followplayer/100)
				if direction>360 {
					direction=0
				}
				if direction<0 {
					direction=360
				}
			} else {
				var dirtop = 180
			}
			} else {
				if instance_exists(yeancat) {
					if passplayer=1 {
						var dirtop = point_direction(x,y,yeancat.x,yeancat.y)
			if master.vert != 0 {
								
								y-=.5*master.vert*(1+yeancat.vspeedmax/2)*(1+varispeed/2)*((master.speedd+20)/60)*(1-outh)
								vdist-=.5*master.vert*(1+yeancat.vspeedmax/2)*(1+varispeed/2)*((master.speedd+20)/60)*(outh)
							}
								if master.horz != 0 {
								x-=.5*master.horz*(1+yeancat.hspeedmax/2)*(1+varispeed/2)*((master.speedd+20)/60)*(1-outh)
								hdist-=.5*master.horz*(1+yeancat.hspeedmax/2)*(1+varispeed/2)*((master.speedd+20)/60)*(outh)
							}
				direction+=(dirtop-direction)*(followplayer/100)
				if direction>360 {
					direction=0
				}
				if direction<0 {
					direction=360
				}
				if dcat<20 {
					passplayer=2
				}
						
					} else {
							if master.vert != 0 {
							y-=(1+varispeed/2)*master.vert*(1+yeancat.vspeedmax/2)*global.madj*(1-outh)
								vdist-=master.vert*(1+yeancat.vspeedmax/2)*(1+varispeed/2)*((master.speedd+20)/60)*(outh)
							}
								if master.horz != 0 {
							x-=(1+varispeed/2)*master.horz*(1+yeancat.hspeedmax/2)*global.madj*(1-outh)
								hdist-=master.horz*(1+yeancat.hspeedmax/2)*(1+varispeed/2)*((master.speedd+20)/60)*(outh)
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

	if speed<(master.speedd+10)/15 {
		if hdist=0 and vdist=0 {
		speed+=.5
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
if instance_exists(yeancat) {
if master.vert != 0 {
	if master.vert<0 {
		if vdist>=0 {
	y-=(global.room_speed_set/1000000*delta_time)*master.vert*abs(yeancat._vspeed)*playerdrift
		} else {
			vdist-=(global.room_speed_set/1000000*delta_time)*master.vert*abs(yeancat._vspeed)*playerdrift
			if vdist<0 {
			vdist=0
		}
		}
	}
	if master.vert>0 {
		if vdist<=0 {
	y-=(global.room_speed_set/1000000*delta_time)*master.vert*abs(yeancat._vspeed)*playerdrift
		} else {
			vdist-=(global.room_speed_set/1000000*delta_time)*master.vert*abs(yeancat._vspeed)*playerdrift
		if vdist>0 {
			vdist=0
		}
		}
	}
}

if master.horz != 0 {
	if master.horz<0 {
		if hdist>=0 {
	x-=(global.room_speed_set/1000000*delta_time)*master.horz*abs(yeancat._hspeed)*playerdrift
		} else {
			hdist-=(global.room_speed_set/1000000*delta_time)*master.horz*abs(yeancat._hspeed)*playerdrift
		if hdist<0 {
			hdist=0
		}
		}
	}
	if master.horz>0 {
		if hdist<=0 {
	x-=(global.room_speed_set/1000000*delta_time)*master.horz*abs(yeancat._hspeed)*playerdrift
		} else {
			hdist-=(global.room_speed_set/1000000*delta_time)*master.horz*abs(yeancat._hspeed)*playerdrift
		if hdist>0 {
			hdist=0
		}
		}
	}
}
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
audio_sound_gain(speak,1*master.dialougevol,0)
audio_sound_gain(flashsound,1*master.sfxvol,0)

if playerdrift > 0 {
	if instance_exists(yeancat) {
if x>room_width/2-1/2*room_width*master.camscale or x<room_width/2+1/2*room_width*master.camscale or y>room_height/2-room_height*1/2*master.camscale or y<room_height/2+room_height*1/2*master.camscale {		
	x-=(yeancat.x-yeancat.xprevious)*playerdrift*(1-outh)
	
	hdist-=(yeancat.x-yeancat.xprevious)*playerdrift*(outh)
	if flying=1 {
	y-=(yeancat.y-yeancat.yprevious)*playerdrift*(1-outh)
	vdist-=(yeancat.y-yeancat.yprevious)*playerdrift*(outh)
	}
}
	}
	//enemydirection needed
	//x-=1*(master.speedd+50)/50*playerdrift
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
	if dcat < 100*magnetplayer {
		x+=spd*(global.room_speed_set/1000000*delta_time)*(yeancat.x-x)*(1-dcat/(100*magnetplayer))/3
		if flying=1 {
		y+=spd*(global.room_speed_set/1000000*delta_time)*(yeancat.y-y)*(1-dcat/(100*magnetplayer))/3
		}
	}
		}
	}

if instance_exists(obj_terrain) {
		var gravv=master.grav*(1/(1+clamp((enemy_height_fromground+enemyaltitude)/1000,0,100)))
	_vspeed+=gravv*(global.room_speed_set/1000000*delta_time)
		if _vspeed>100*(1-(1/(1+(enemy_height_fromground+enemyaltitude)/50000)))+8 {
		_vspeed=100*(1-(1/(1+(enemy_height_fromground+enemyaltitude)/50000)))+8
	}
	if enemy_height_fromground+enemyaltitude<=0 {
		if vdist>=0 {
		onground=1
		canjump=1
		jumpcount=jumptotal
		_vspeed=0;
		enemyaltitude=0
		y=ground_yvalue_belowenemy
		}
	} else {
		if vdist<=0 {
		if enemy_height_fromground+enemyaltitude>3 {
			//jumping=1
		onground=0
		} else {
	jumping=0
		}
		}
		//if rising=0 {
		y+=(global.room_speed_set/1000000*delta_time)*_vspeed
			if enemyaltitude>0 {
			enemyaltitude-=(global.room_speed_set/1000000*delta_time)*_vspeed
			} else {
			enemyaltitude=0
			}
		//} else {
		//	//	if obj_terrain.enemyaltitude>=0 {
		//	//obj_terrain.enemyaltitude-=(global.room_speed_set/1000000*delta_time)*_vspeed
		//	//} else {
		//	//	obj_terrain.enemyaltitude=0
		//	//}

		//}
	}
}


