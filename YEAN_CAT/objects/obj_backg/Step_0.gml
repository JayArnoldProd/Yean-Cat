///step of obj_backg
//
x=room_width/2
y=room_height/2
backgroundcolor=obj_terrain.backgroundcolor
pht=clamp(obj_terrain.playeraltitude/40000,0,1)
if global.pause=0 {
if instance_exists(yeancat) {
if abs(travelspeed)<yeancat.hspeedmax {
	if master.horz=1 {
		if travelspeed<0 {
			travelspeed*=.95
		}
	} else {
		if master.horz=-1 {
			if travelspeed>0 {
			travelspeed*=.95
		}
		}
	}
travelspeed+=(master.horz*pht*power(abs(yeancat._hspeed),.8))/200
//where speed is set
if abs(travelspeed) > abs(obj_terrain.d2plan/7.5)*yeancat.hspeedmax {
if master.joystick=0 {
if !(input_check("left")) and !(input_check("right")) {
	travelspeed*=.97
}
} else {
		//joystick
		if master.joystickon=0 {
			travelspeed*=.97
		}
	}
}
obj_terrain.travelspeed=travelspeed
} else {
	if travelspeed>0 {
		travelspeed=yeancat.hspeedmax-.5
	} else {
		travelspeed=-(yeancat.hspeedmax-.5)
	}
	if abs(travelspeed) > abs(obj_terrain.d2plan/7.5)*yeancat.hspeedmax {
if master.joystick=0 {
if !(input_check("left")) and !(input_check("right")) {
	travelspeed*=.97
}
} else {
		//joystick
		if master.joystickon=0 {
			travelspeed*=.97
		}
	}
}
}
}
}
if master.mainmenu=0 {
	if slideplanet>0 {
		slideplanet=slideplanet*.9985-1.55
		if slideplanet<0 {
			slideplanet=0
		}
	} else {
		master.grav=planets[planet,2]
		slideplanet=0
	}
	planrot=calculateAngle(planrot,slideplanet,800)
} else {
	planrot+=.03
	
}
if planrot>=360 {
	planrot=0
}
if is_undefined(planrot) {
	planrot=0
}
if master.mainmenu=0 {
	if boost<3 {
		boost+=.05
	} else {
		boost=3
	}
} else {
	if boost>0 {
		boost-=.05
	} else {
		boost=0
	}
}

if instance_exists(obj_terrain) {
	playeraltitude=obj_terrain.playeraltitude
	playerpos=obj_terrain.playerpos
	systemposition=obj_terrain.systemposition
	d2plan=obj_terrain.d2plan
player_height_fromground=obj_terrain.player_height_fromground
}

alph=0+1*(1-1/(1+clamp((obj_terrain.player_height_fromground+obj_terrain.playeraltitude-15000)/15000,0,1000)))+fadein
lalph=0+1*(1-1/(1+clamp((obj_terrain.player_height_fromground+obj_terrain.playeraltitude-15000)/30000,0,1000)))+fadein
if is_nan(lalph) {
	lalph=0
}
if is_nan(alph) {
	alph=0
}
if global.pause=1 and !instance_exists(restar) {
	exit
}
time+=.005+(.025*(1-1/(1+master.ti/6000)))
var waviness = .6
osc=((0+master.ti/1007)*(global.room_speed_set/1000000*delta_time)*((clamp(master.speedd,0,200)+50)/50))
var jtj=0
if instance_exists(yeancat) {
jtj = (clamp(abs(yeancat.y-room_height/2)/500,0,1)*sin(pi/4+ 2 * pi * (time) / 15))
shift=sign(room_height/2-yeancat.y)*sign(jtj)*abs(osc)*((1) * (clamp(abs(yeancat.y-room_height/2)/500,0,1)*sin(pi/4+ 2 * pi * (time) / 15)))*(-1)

}
rainbowv+=shift*waviness
waviness=1
rainbowv2+=shift*waviness
back1scale=4-1.5*(1-1/(1+clamp(master.speedd-10,0,1000)/10))*(1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/10000))
back2scale=2-1.25*(1-1/(1+clamp(master.speedd-10,0,1000)/5))*(1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/20000))
var wayy=1
if instance_exists(yeancat) {
wayy=yeancat.facing
//rainbowh+=(6/back1scale)*(1-(1/(1+clamp(master.speedd-10,0,1000)))*(global.room_speed_set/1000000*delta_time)*(.2*(clamp(master.speedd,0,200)+15)/6+.05*master.horz*(clamp(master.speedd,0,200)+10)/10)*(1+boost)/2)*master.camscale*(1-1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/10000))*wayy+master.mainmenu*3/2
//rainbowv+=(back1scale/6)*((1/(1+clamp(master.speedd-10,0,1000)/2))*(global.room_speed_set/1000000*delta_time)*(.15*master.vert*(clamp(master.speedd,0,200)+15)/10)*(1+boost))*master.camscale*(1-1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/10000))
//rainbowh2+=(4/back2scale)*(1-(1/(1+clamp(master.speedd-10,0,1000)))*(global.room_speed_set/1000000*delta_time)*(.2*(clamp(master.speedd,0,200)+15)/6+.05*master.horz*(clamp(master.speedd,0,200)+10)/10)*(1+boost)/2)*master.camscale*(1-1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/15000))*wayy+master.mainmenu*3/2
//rainbowv2+=(back2scale/4)*((1/(1+clamp(master.speedd-10,0,1000)/2))*(global.room_speed_set/1000000*delta_time)*(.15*master.vert*(clamp(master.speedd,0,200)+15)/10)*(1+boost))*master.camscale*(1-1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/15000))
rainbowh+=(back1scale/500)*(global.room_speed_set/1000000*delta_time)*master.camscale*travelspeed+master.mainmenu*3/2
rainbowv+=(back1scale/150)*(global.room_speed_set/1000000*delta_time)*master.vert*master.camscale*pht*power(abs(yeancat._vspeed),.5)+master.mainmenu*3/2
rainbowh2+=(back2scale/150)*(global.room_speed_set/1000000*delta_time)*master.camscale*travelspeed*(1+abs(travelspeed/500))+master.mainmenu*3/2
rainbowv2+=(back2scale/70)*(global.room_speed_set/1000000*delta_time)*master.vert*master.camscale*pht*power(abs(yeancat._vspeed),.5)+master.mainmenu*3/2
}
if rainbowh>=sprite_get_width(back)*master.camscale*back1scale {
	rainbowh-=sprite_get_width(back)*master.camscale*back1scale
}
if rainbowv>=sprite_get_height(back)*master.camscale*back1scale {
	rainbowv-=sprite_get_height(back)*master.camscale*back1scale
}
if rainbowv<-sprite_get_height(back)*master.camscale*back1scale {
	rainbowv+=sprite_get_height(back)*master.camscale*back1scale
}


if rainbowh2>=sprite_get_width(back2)*master.camscale*back2scale {
	rainbowh2-=sprite_get_width(back2)*master.camscale*back2scale
}
if rainbowv2<-sprite_get_height(back2)*master.camscale*back2scale {
	rainbowv2+=sprite_get_height(back2)*master.camscale*back2scale
}
if rainbowv2>=sprite_get_height(back2)*master.camscale*back2scale {
	rainbowv2-=sprite_get_height(back2)*master.camscale*back2scale
}

