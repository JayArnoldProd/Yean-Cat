//STEP event for "yeancat" (the player object)
// You can write your code in this editor
audio_emitter_position(s_emit,x,y,0);

if master.mainmenu=1 {
	if menumove=0 and positionplace=0{
		menumove=choose(-1,1)
		menudir=choose(-1,1)
		x=room_width/2
		y=room_height/2
	}

if master.characters[master.charselect,0]=0 {
	c_cat=c_black
} else {
	c_cat=c_white
}
} else {
	trailalph=(1-1/(1+clamp(master.aspeed,0,1000)))*(1-1/(1+clamp(obj_terrain.player_height_fromground+obj_terrain.playeraltitude,0,1000)/5000))
}

if master.characters[master.charselect,16] !=0 {
if (obj_terrain.travelspeed=0) and round(10*(abs(_hspeed)+10*abs(_vspeed))/10 = 0.0) {
	if sitting<master.characters[master.charselect,16] {
		sitting=(sitting*49+master.characters[master.charselect,16])/50
	}
} else {
	if sitting>0 {
		sitting=sitting*49/50-1
	} else {
		sitting=0
	}
}
}

//responses
if speaking=0 {
if responding!=-1 {
		if !audio_is_playing(speak) {
		if master.responsecount[floor(responding / 6),responding mod 6 ]<1 {
		speak =  audio_play_sound_on(s_emit,responses[responding,master.charselect],0,0)
		master.responsecount[floor(responding / 6),responding mod 6 ]=round(10+random(10))
		speaking=1
		audio_sound_gain(speak,.8*master.mastervol*master.dialougevol,0);
		}
		
		}
	}
}
if speaking=1 {
	if !audio_is_playing(speak) {
		speaking=0
	}
}
if flying=1 {
	if !instance_exists(restar) {
	if abs(obj_terrain.playerpos)>0 {
	obj_terrain.playerpos=round(obj_terrain.playerpos*.97)
	} else {
		obj_terrain.playerpos=0
	}
	}
}
if instance_exists(master) {
	if positionplace=1 {
		if obj_backg.slideplanet=0 {
		if round(100*obj_terrain.systemposition)/100=0 {
		
		if obj_terrain.playeraltitude>0 {
			
	obj_terrain.playeraltitude=clamp(round(obj_terrain.playeraltitude*.96),0,39995)
	flying=0
	master.flying=0
	} else {
		obj_terrain.playerpos=0
		obj_terrain.playeraltitude=0
	}
		} else {
			if obj_terrain.playeraltitude<40000 {
				obj_terrain.playeraltitude=(obj_terrain.playeraltitude*12+40010)/13
			} else {
				flying=1
				obj_terrain.playeraltitude=40005
			}
			
		}
	if abs(obj_terrain.playerpos)>.1 {
		obj_backg.slideplanet=0
	obj_terrain.playerpos=round(obj_terrain.playerpos*.95)
	} else {
		obj_terrain.playerpos=0
	}
	if obj_terrain.systemposition!=0 {
		if obj_terrain.playeraltitude>=40000 {
		if abs(obj_terrain.systemposition)>180 {
	obj_terrain.systemposition=((obj_terrain.systemposition*24+360)/25)
	if obj_terrain.systemposition>359.5 {
		obj_terrain.systemposition=0
	}
	} else {
		if obj_terrain.systemposition<.5 {
		obj_terrain.systemposition=0
	} else {
		obj_terrain.systemposition=((obj_terrain.systemposition*24+0)/25)
	}
	}
		}
	} else {
		obj_backg.slideplanet=0
		obj_terrain.systemposition=0
		if abs(obj_terrain.playeraltitude)>0 {
			flying=0
	obj_terrain.playeraltitude=round(obj_terrain.playeraltitude*.95)-1
	if obj_terrain.playeraltitude<0 {
		obj_terrain.playeraltitude=0
	}
	} else {
		
		obj_terrain.playeraltitude=0
	}
	}
	if round(obj_terrain.systemposition) = 0 and round(obj_terrain.playerpos) = 0 and round(obj_terrain.playeraltitude)=0 {
		obj_terrain.systemposition=0
		obj_terrain.playerpos=0
		obj_terrain.playeraltitude=0
	master.spawnthings=1
						//grav=.2
						master.lower=0
						//master.dropgui=1
						master.ti=0
						positionplace=0
						flying=0
						master.flying=0
	}
	}
		var spdd=.015
if trailalph!=0 {
	trailalph=trailalph+(0-trailalph)*spdd
} else {
	trailalph=0
}
		if instance_exists(obj_backg) {
if obj_backg.fadein!=0 {
	obj_backg.fadein=obj_backg.fadein+(0-obj_backg.fadein)*spdd
} else {
	obj_backg.fadein=0
}
		}
		_hspeed=0
		_vspeed=0
		menumove=0
		menudir=0
		if rate>0 {
	rate-=1
} else {
	rate=rateset

	anicount+=1

}

if anicount>=5 {
	anicount = 0
}
		if flying=1 {
			var spddd= .01
		x=x+((room_width/2-500)-x)*spddd
		y=y+((room_height/2)-y)*spddd
		} else {
			
		}
		if point_distance(x,y,room_width/2-500,room_height/2)<75 {
				//if master.mainmenu=0 {
				if instance_exists(obj_backg) {
					if obj_backg.slideplanet<50 {
						if round(obj_terrain.systemposition) = 0 and round(obj_terrain.playeraltitude)=0 and round(obj_terrain.playerpos)=0 {
						master.spawnthings=1
						//grav=.2
						//master.lower=0
						master.lower=0
						//master.dropgui=1
						master.ti=0
						positionplace=0
						flying=0
						master.flying=0
						}
					}
				}
				
				//}
		}
		exit
	} else {
		if positionplace=2 {
		_hspeed=0
		_vspeed=0
		if rate>0 {

	rate-=1

} else {
	rate=rateset
	anicount+=1
}

if anicount=5 {
	anicount = 0
}

//walksound
if onground=1 {
	if anicount=4 and image_indexprev!=anicount {
		var walksnd = nothingsound
		var pick=choose(1,2,3,4)
		if pick =1 {
			walksnd=grasswalk1
		}
		if pick =2 {
			walksnd=grasswalk2
		}
		if pick =3 {
			walksnd=grasswalk3
		}
		if pick =4 {
			walksnd=grasswalk4
		}
		walksound=audio_play_sound_on(s_emit,walksnd,0,0,1*master.sfxvol*master.mastervol*clamp((abs(_hspeed))/150+.5,0,1),0,.5+clamp((abs(_hspeed))/25,0,2))
	}
}


		if positionplace=2 {
		_hspeed=0
		_vspeed=0
		x+=(global.room_speed_set/1000000*delta_time)*clamp(5*sign((room_width/2)-x)*(.1+abs((room_width/2)-x)/500),-10,10)
		y+=(global.room_speed_set/1000000*delta_time)*clamp(5*sign((room_height/2-65)-y)*(.1+abs((room_height/2-65)-y)/500),-10,10)
		

		exit
	}
	} else {
		if master.mainmenu=0 {
		if obj_backg.fadein<.001 {
			obj_backg.fadein=0 
		} else {
			obj_backg.fadein*=.9
		}
		}
	}
	}

if global.pause=1 {
	speed=0
	exit
} else {
	if dodge=1 {
		speed=1
	} else {
		speed=0
	}
}
ragemax=10+clamp(master.level/66,0,30)
if rage<ragemax {
	rage+=.01
}

if rate>0 {
					if flying=0 {
		if abs(_hspeed)>0 {
			rate-=.1+1*abs(_hspeed)/20
		}
	} else {
	rate-=.5+.5*abs(_hspeed)/20
	}
} else {
	rate=rateset
	anicount+=1
}

if anicount=5 {
	anicount = 0
}

if spawned=0 {
	//update healthh
	maxhealth=10+master.love
	healthh=maxhealth
	spawned=1
}

if healthh>maxhealth {
	healthh=maxhealth
	healthlast=healthh
}
if master.passives[15,3]>0 {
	if mermin>0 {
	mermin-=delta_time;
	} else {
		mermin=60*1000000;
		merctime=merctimeset*1000000;
	}
	
} 
merctimeset=5*master.mercy
if merctime>0 {
	if master.passives[15,3]>0 {
merctime-=delta_time
merc=1
	}
} else {
		merc=0

}

healsec=master.heartseconds*1000000
healsecount-=delta_time
if healsecount<0 {
		if healthh<maxhealth {
			//if healthh<=0 {
			//	healthh=round(healthh)
			//		healthh+=1
			//	}
			if healthh>0 {
				
				healthlast=healthh
			healthh+=master.heart
			}
	} else {
		healthh=maxhealth
	}
	healsecount=healsec
	}
	
if xpnote>6 {
	xpnote=0
}
	if master.mainmenu=0 {
		tallness= master.characters[master.charselect,14]
		var playerStats = calculatePlayerStats(master.level)
maxSpeed = playerStats.maxSpeed
timeToMax = playerStats.timeToMax
overMaxSpeed = playerStats.overMaxSpeed
timeToOverMax = playerStats.timeToOverMax
hspeedmax=maxSpeed
vspeedmax=maxSpeed
jumpheight=1.35+vspeedmax/15
jumptotal=2+floor(master.level/2)
if jumptotal > jumptotallast {
	var attrib = instance_create_layer(x,y,"foreground",obj_attribute_indicator)
	attrib.attribute_select=0
}

accel=(maxSpeed/(timeToMax)*(master.freewill+1)+8/(1+abs(_hspeed)/50))*(delta_time/1000000)
var accel2=overMaxSpeed/(timeToOverMax)*(delta_time/1000000)*(master.freewill+1)
if _hspeed=0 {
	movingg=0
}
if master.joystick=0 {
if input_check("right") {
	if flying=1 {
	if _hspeed<0 {
			_hspeed*=.9
			_hspeed+=.1
		}
	} else {
		if onground=0 {
			if _hspeed<hspeedmax/2 {
			_hspeed+=(obj_terrain.playeraltitude/40000)
			}
		}
	}
	if _hspeed>=0 {
		facing=1
	if onground=1 and flying=0 {
	if _hspeed<hspeedmax {
	_hspeed+=accel
	} else {
	if _hspeed<(hspeedmax+overMaxSpeed) {
		_hspeed+=accel2
	}
	}
	if onground=1 {
		if _hspeed=0 {
			movingg=0
			master.horz=0
		}
	}
	} else if flying=1  {
		
		if _hspeed<hspeedmax {
		_hspeed+=power(accel,.65)
		} else {
		if _hspeed<(hspeedmax+overMaxSpeed) {
			_hspeed+=power(accel2,.65)
		}
		}
	}
	} else {
		if _hspeed<0 {
			facing=1
			}
		if onground=1 {
		_hspeed=(_hspeed*25)/30+.5
	} else {
			if flying=0 {
				_hspeed=(_hspeed*29)/30+.01
			} else {
				_hspeed=(_hspeed*29)/30+.01
			}
		}
	}
}
if (input_check("left")) {
	if flying=1 {
	if _hspeed>0 {
			_hspeed*=.9
			_hspeed-=.1
		}
	}  else {
		if onground=0 {
			if _hspeed>-hspeedmax/2 {
			_hspeed-=(obj_terrain.playeraltitude/40000)
			}
		}
	}
	if _hspeed<=0 {
		facing=-1
	if onground=1 and flying=0 {
	if _hspeed>-hspeedmax{
	_hspeed-=accel
	} else {
	if _hspeed>-(hspeedmax+overMaxSpeed) {
		_hspeed-=accel2
	}
	}
	} else {
		if flying=1 {
		if _hspeed>-hspeedmax{
		_hspeed-=power(accel,.65)
		}  else {
	if _hspeed>-(hspeedmax+overMaxSpeed) {
		_hspeed-=power(accel2,.65)
	}
	}
		}
	}
	} else {
			if _hspeed>0 {
			facing=-1
			}
		if onground=1 {
		_hspeed=(_hspeed*25)/30-.5
		} else {
			if flying=0 {
				_hspeed=(_hspeed*29)/30-.01
			} else {
				_hspeed=(_hspeed*29)/30-.01
			}
		}
	}
}
if input_check("up") {
	if flying=1 {
	if _vspeed>-vspeedmax {
	_vspeed-=accel*.7
	}
	} else {

	}
	
} else if (input_check("down")) {
	if flying=1 {
	if _vspeed<vspeedmax {
	_vspeed+=accel*.7
	}
	_vspeed=clamp(_vspeed,-100,(clamp(obj_terrain.playeraltitude-(39998+(abs(obj_terrain.d2plan))),0,20000)/(25*(1+abs(obj_terrain.d2plan)))))
		} else {
			if _vspeed < vspeedmax*(obj_terrain.playeraltitude/2000) {
				_vspeed+=accel*.7*(obj_terrain.playeraltitude/40000)
			}
	}
	
}
	} else {
		//joystick
		if master.joystickon=1 {
			if abs(_hspeed)<hspeedmax {
		_hspeed+=accel*(1)*lengthdir_x(master.joydist/100,master.joyangle)
			}
		if flying=1 {
		_vspeed+=accel*(.7)*lengthdir_y(master.joydist/100,master.joyangle)
		} else {
			if lengthdir_y(master.joydist/100,master.joyangle)>lengthdir_y(master.joydist/100,270)*.75 {
			if _vspeed < vspeedmax*(obj_terrain.playeraltitude/2000) {
				_vspeed+=accel*.7*(obj_terrain.playeraltitude/40000)
			}
			//down joystick
			}
			//upjoystick
			if lengthdir_y(master.joydist/100,master.joyangle)<lengthdir_y(master.joydist/100,90)*.75 {
				if canjump=1 and resjump=0 {
					resjump=1
			if rising=-1 {
		rising=0
//clamp(_vspeed-((abs(_hspeed)+1)*jumpheight+20),-100000,0)
		_vspeed+=clamp(-((abs(clamp(power(abs(_hspeed),.5),-100,100))+15)*jumpheight),-75-(obj_terrain.playeraltitude/4000),0)
		if _vspeed>0 {
			_vspeed=clamp(-((abs(clamp(power(abs(_hspeed),.5),-100,100))+15)*jumpheight),-75-(obj_terrain.playeraltitude/4000),0)/(1+abs(_vspeed/25))
		}
		y+=(global.room_speed_set/1000000*delta_time)*_vspeed/2
	}
	if flying=0 {

if canjump=1 {
	_vspeed+=clamp(-((abs(clamp(power(abs(_hspeed),.5),-100,100))+15)*jumpheight),-75-(obj_terrain.playeraltitude/4000),0)
		if _vspeed>0 {
			_vspeed=clamp(-((abs(clamp(power(abs(_hspeed),.5),-100,100))+15)*jumpheight),-75-(obj_terrain.playeraltitude/4000),0)/(1+abs(_vspeed/25))
		}
		if !rising=1 and obj_terrain.playeraltitude>0 {
	y+=(global.room_speed_set/1000000*delta_time)*_vspeed/2
	} else {
			if obj_terrain.playeraltitude>0 {
			
				rising=0
			obj_terrain.playeraltitude-=(global.room_speed_set/1000000*delta_time)*_vspeed
			} else {
				obj_terrain.playeraltitude=0
			}
		}
	jumping=1
	jumpcount-=1
	if jumpcount<=0 {
		canjump=0
		jumpcount=0
	}
	}
}
}
			} else {
				resjump=0
			}
		}
		}
	}
	}

if master.mainmenu=0 {
	if flying=1 {
	if master.joystick=0 {
//vertical friction
if _vspeed !=0 {
if (!(input_check("up")) and !(input_check("down"))) {
	_vspeed*=.95*frict
	if abs(_vspeed) <.001 {
		_vspeed=0
	}
}
}


//horizontal friction
if _hspeed !=0 {
if (!(input_check("left")) and !(input_check("right"))) {
	_hspeed*=.94
	if abs(_hspeed) <.004 {
		_hspeed=0
	}
}  else {
		//_hspeed*=.98*frict
}
}

	} else {
		//joystick
		if master.joystickon=0 {
			_vspeed*=.95*frict
			_hspeed*=.95*frict
		}
	}
	} else {
		//not flying
			if master.joystick=0 {
//vertical friction
if _vspeed !=0 {
if !(input_check("up")) {
	if _vspeed<0 {
		_vspeed*=.94*frict
		if abs(_vspeed) <.001 {
		_vspeed=0
	}
	}

} else {
	if _vspeed<0 {
		_vspeed*=.94*frict
		if abs(_vspeed) <.001 {
		_vspeed=0
	}
	}
}
}
//horizontal friction
if _hspeed !=0 {
if !(input_check("left")) and !(input_check("right")) {
	if onground=1 {
	_hspeed*=.94*frict
	if abs(_hspeed) <.004 {
		_hspeed=0
	}
	}
}
}

} else {
		//joystick
if master.joystickon=0 {
	_hspeed*=.94*frict
} else {
	if lengthdir_y(master.joydist/100,master.joyangle)>lengthdir_y(master.joydist/100,270)*.75 {
		if _vspeed<0 {
			_vspeed*=.94*frict
		}
	} else {
		if _vspeed<0 {
			_vspeed*=.94*frict
		}
	}
		}
	}
		
}

//move
if dodge>0{
	dodge-=.05
	if instance_exists(enemy) {
	var dodgetarg= instance_nearest(x,y,enemy);
	direction=point_direction(dodgetarg.x,dodgetarg.y,x,y)
	speed=(dodge*master.speedd+5)/15
	} else {
		dodge=0
	} 
} else {
	if dodge !=-1 {
	speed=0
	dodge=-1
	}
	
}

	//slow down star movement
if y>(room_height/2-1080*master.camscale/2+100) and y<(room_height/2+1080*master.camscale/2-100) {
	
	if y<room_height/2+1080*.5*master.camscale*5/8 {
	master.vert*=.95*frict
	if abs(master.vert) < .001 {
		
		master.vert=0
	}
	}
}
} else {

}
if master.mainmenu=1 { //main menu bouncing around the screens border effect (like a screensaver)
	//master.vert=0
	//master.horz=0
if x>room_width/2+1920*master.camscale/2-150 {
	_hspeed=0
	speed=0
master.horz=1

	menumove=-1
	x=room_width/2+1920*master.camscale/2-151
}
if x<room_width/2-1920*master.camscale/2+150 {
	_hspeed=0
	speed=0
master.horz=-1
	menumove=1
	x=room_width/2-1920*master.camscale/2+151
}
if y>room_height/2+1080*master.camscale/2-100 {
	_vspeed=0
	speed=0
	master.vert=1
	y=room_height/2+1080*master.camscale/2-101
	menudir=-1
}
if y<room_height/2-1080*master.camscale/2+100 {
	_vspeed=0
	speed=0
	master.vert=-1
	y=room_height/2-1080*master.camscale/2+101
	menudir=1
}
			accel=.3
		_vspeed+=accel*menudir
		_hspeed+=accel*menumove

} else {
	if flying=0 {
	if master.aspeedshow<10 {
				
				if centerfade<0 {
					centerfade=0
				} else {
					master.horz=0
					centerfade=floor(centerfade*.98-1)
				}
				}
	} else {
		if master.aspeedshow<10 {
				
				if centerfade<0 {
					centerfade=0
				} else {
					master.horz=0
					centerfade=floor(centerfade*.98-1)
				}
				}
	}

	if x>=room_width/2+floor((1-centerfade/500)*1920*.75*5*master.camscale/8) {

	if flying=1 {
		movingg=1
		master.horz=1
	//_hspeed=0
	speed=0
	x=(room_width/2+floor((1-centerfade/500)*1920*.75*5*master.camscale/8))
	} else {
		if _hspeed>0 {
			//rate-=.1+.9*abs(_hspeed)/25
			x=(room_width/2+floor((1-centerfade/500)*1920*.75*5*master.camscale/8))
			movingg=1
			master.horz=1
			} else {
				movingg=0
				master.horz=0
			}
	}
}  else {
	if x>room_width/2 {
	if flying=1 {
		movingg=0
		master.horz=0
	} else {
		if _hspeed>0 {
		movingg=0
		master.horz=0
		}
	}
	}
}

if x<=room_width/2-floor((1-centerfade/500)*1920*.75*5*master.camscale/8) {
		if flying=1 {
		movingg=-1
		master.horz=-1
	//_hspeed=0
	speed=0
	x=(1*((room_width/2-floor((1-centerfade/500)*1920*.75*5*master.camscale/8))))
		} else {
			x=(1*((room_width/2-floor((1-centerfade/500)*1920*.75*5*master.camscale/8))))
			if _hspeed<0 {
			//rate-=.1+.9*abs(_hspeed)/25
			movingg=-1
			master.horz=-1
			} else {
				movingg=0
				master.horz=0
			}
		}
	} else {
		if x<room_width/2 {
		if flying=1 {
		movingg=0
		master.horz=0
	} else {
		if _hspeed<0 {
		movingg=0
		master.horz=0
		}
	}
		}
	}

if flying=1 {
if y>room_height/2+1080*.5*master.camscale*5/8 {
	
	//_vspeed=0
	speed=0
	master.vert=1
	y=room_height/2+1080*.5*master.camscale*5/8+1
	obj_terrain.playeraltitude-=(global.room_speed_set/1000000*delta_time)*20*(clamp(obj_terrain.playeraltitude-40000,0,20000)/10000)
}
} else {
	
	//master.vert=1
if obj_terrain.playeraltitude>0 {
	if y>=(room_height/2+1080*master.camscale/2-100) {
		master.vert=1
if _vspeed>0 {
	rising=-1
} else {
	rising=0
}
//obj_terrain.playeraltitude-=(global.room_speed_set/1000000*delta_time)*_vspeed
y-=1*((room_height/2-1080*.5*master.camscale*5/8)-y)+1
}
} else {
	obj_terrain.playeraltitude=0
}
}

if y<room_height/2-1080*.5*master.camscale*5/8 {
	if flying=1 {
	//_vspeed=0
	speed=0
	master.vert=-1
	y+=1*((room_height/2-1080*.5*master.camscale*5/8)-y)+1
	obj_terrain.playeraltitude+=(global.room_speed_set/1000000*delta_time)*20
	} else {
		master.vert=-1
		
		obj_terrain.playeraltitude-=(global.room_speed_set/1000000*delta_time)*_vspeed
	
	
	rising=1
	//y+=1*((room_height/2-1080*.5*master.camscale*5/8)-y)+1
	//speed=0
	//master.vert=-1
	if _vspeed>0 {
		y+=_vspeed
	}
	
	}
	
} else {
	if y>room_height/2+1080*.5*master.camscale*3/8 {
		if flying=0 {
	if obj_terrain.playeraltitude>0 {
		rising=-1
		master.vert=1
		obj_terrain.playeraltitude-=clamp((global.room_speed_set/1000000*delta_time)*_vspeed,-200,20)

		} else {
			rising=0
		}
		}
	} else {
		if obj_terrain.playeraltitude>0 {
		rising=0
		//obj_terrain.playeraltitude-=(global.room_speed_set/1000000*delta_time)*_vspeed

		} else {
			rising=0
			obj_terrain.playeraltitude=0
		}
	}
}
if master.horz!=0 {
	if flying=0 {
	if centerfade<450 {
			centerfade+=master.aspeedshow/4
		} else {
			centerfade=450
		}
	} else {
		if centerfade<400 {
			centerfade+=master.aspeedshow/20
		} else {
			centerfade=400
		}
	}
} else {
}
		


if breakheart>0 {
	breakheart-=.01
} else {
	breakheart=0
}

if oxy>0 {
	time+=.03+.03*(clamp(5-oxy,.1,5))
	oxy-=.0006*(.95+oxy*1.2)
	oxydamage=clamp(oxydamage-.00075,1,999);
oxyspeed=clamp(oxyspeed-.00075,1,999);
oxyresistance=clamp(oxyresistance-.00075,0,1);
oxyrate=clamp(oxyrate-.00075,1,999);
} else {
	time=0
	oxy=0
	oxydamage=1
oxyspeed=1
oxyresistance=0
oxyrate=1
}

if def>0 {
	def-=.00075*(global.room_speed_set/1000000*delta_time)*(.99+def)
	if gunrateset>1 {
		gunrateset-=.001*(def+1)
	}
	if gunrotrate<10 {
		gunrotrate+=.0005*(def+1)
	}
	gunrate-=.3*master.attackrate*oxyrate*stemrate*(global.room_speed_set/1000000*delta_time)
	if gunrate<0 {
		instance_create_layer(x+100*facing,y-facing*sin(gunrot * pi / 180)*100+40,"player",bullet)
	var gun = round(random(2))
if gun = 0 {
	gunsnd = audio_play_sound_on(s_emit,gun1,0,0);
}
if gun = 1 {
	gunsnd = audio_play_sound_on(s_emit,gun2,0,0);
}
if gun = 2 {
	gunsnd = audio_play_sound_on(s_emit,gun3,0,0);
}
audio_sound_gain(gunsnd,.7*master.mastervol*master.sfxvol,0);
gunrate=gunrateset
	}
	if gundir=1 {
		gunrot+=gunrotrate
		if gunrot>45 {
			gundir=-1
		}
	}
	if gundir=-1 {
		gunrot-=gunrotrate
		if gunrot<-45 {
			gundir=1
		}
	}
	
} else {
	audio_stop_sound(soundscream)
	def=0
	gunrotrate=1
	gunrateset=10
	gunrate=gunrateset
}
}

	damageframe-=1
	if damageframe=0 {
	for (i=45; i>0; i--) {
	redcount[i]=redcount[i-1]
	}
	if redcount[0]=1 {
		redcount[0]=0
	}
	damageframe=damageframeset
	}

if flying=1 and master.mainmenu=0 {
	
	if (x>room_width/2-1920*.75*5*master.camscale/8+1) and  x<(room_width/2+1920*.75*5*master.camscale/8-1) {
//if x>(room_width/2-1920*master.camscale/2+149) and x<(room_width/2+1920*master.camscale/2-149) {
	master.horz*=.95*frict
	if abs(master.horz) < .001 {
		master.horz=0
	}
}

} else {

//if x>(room_width/2-1920*master.camscale/2+149) and x<(room_width/2+1920*master.camscale/2-149) {
	if master.mainmenu=0 {
if movingg=0 {

	master.horz*=.99*frict
	if abs(master.horz) < .001 {
		master.horz=0
	}
	}

	if positionplace=0 {
		var gravv=.2
		if instance_exists(obj_terrain) {
		gravv=master.grav*(1/(1+clamp((obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/2000,0,1000)))
		}
	_vspeed+=gravv*(global.room_speed_set/1000000*delta_time)*(200/(800+master.aspeed))
	if flying=0 {
		if _vspeed>500*(1-(1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/10000)))+5 {
		_vspeed=500*(1-(1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/10000)))+5
	}
	}
	}
	} else {
		if positionplace=0 {
	y+=(global.room_speed_set/1000000*delta_time)*_vspeed/2
		} else {
		}
	}
	if master.mainmenu=0 {
if master.joystick=0 {
	if keyboard_check(ord("A")) or keyboard_check(vk_left)  {
		if movingg=1 {
			movingg=0
		}
	facing=-1
	} else {
		//facing=-1
	}
//}
//if _hspeed<0 {
	if input_check("right") {
	facing=1
	} else {
		if movingg=-1 {
			movingg=0
		}
		//facing=1
	}
//}
} else {
	if master.joystickon=1 {
	facing=sign(lengthdir_x(master.joydist/100,master.joyangle))
	}
}


	}
}
if instance_exists(obj_terrain) {
	if ((obj_terrain.player_height_fromground)-tallness+sitting+obj_terrain.playeraltitude - _vspeed)<=0 {
		if master.mainmenu=0 and flying=0 {
		onground=1
		canjump=1
		jumpcount=jumptotal
		_vspeed=0;
		obj_terrain.playeraltitude=0
		y=obj_terrain.ground_yvalue_belowplayer-tallness+sitting
		}
	} else {
		if obj_terrain.player_height_fromground-tallness+sitting+obj_terrain.playeraltitude-_vspeed>3 {
			//jumping=1
		onground=0
		} else {
	jumping=0
		}
		if rising=0 {
		y+=(global.room_speed_set/1000000*delta_time)*_vspeed
			if obj_terrain.playeraltitude>0 {
			obj_terrain.playeraltitude-=(global.room_speed_set/1000000*delta_time)*_vspeed
			} else {
				obj_terrain.playeraltitude=0
			}
		} else {
			//	if obj_terrain.playeraltitude>=0 {
			//obj_terrain.playeraltitude-=(global.room_speed_set/1000000*delta_time)*_vspeed
			//} else {
			//	obj_terrain.playeraltitude=0
			//}
		}
	}
if input_check_pressed("up") {
	if rising=-1 {	
if canjump=1 {
		_vspeed+=clamp(-((abs(clamp(power(abs(_hspeed),.5),-100,100))+15)*jumpheight),-75-(obj_terrain.playeraltitude/4000),0)
		if _vspeed>0 {
			_vspeed=clamp(-((abs(clamp(power(abs(_hspeed),.5),-100,100))+15)*jumpheight),-75-(obj_terrain.playeraltitude/4000),0)/(1+abs(_vspeed/25))
		}
		y+=(global.room_speed_set/1000000*delta_time)*_vspeed/2
		rising=0
	}
	}
	if flying=0 {

if canjump=1 {
	_vspeed+=clamp(-((abs(clamp(power(abs(_hspeed),.5),-100,100))+15)*jumpheight),-75-(obj_terrain.playeraltitude/4000),0)
		if _vspeed>0 {
			_vspeed=clamp(-((abs(clamp(power(abs(_hspeed),.5),-100,100))+15)*jumpheight),-75-(obj_terrain.playeraltitude/4000),0)/(1+abs(_vspeed/25))
		}
	if !rising=1 and obj_terrain.playeraltitude<0 {
	y+=(global.room_speed_set/1000000*delta_time)*_vspeed/2
	} else {
			if obj_terrain.playeraltitude>0 {
			
				rising=0
			obj_terrain.playeraltitude-=(global.room_speed_set/1000000*delta_time)*_vspeed
			} else {
				obj_terrain.playeraltitude=0
			}
		}
	jumping=1
	jumpcount-=1
	if jumpcount<=0 {
		canjump=0
		jumpcount=0
	}
	}
}
}
if movingg=0 {
	//moving in game
	if positionplace!=0 {
x+=(global.room_speed_set/1000000*delta_time)*_hspeed
	} else {
		//if positionplace=0 {
			if master.mainmenu=1 {
		x+=(global.room_speed_set/1000000*delta_time)*_hspeed/2
			} else {
				x+=(global.room_speed_set/1000000*delta_time)*_hspeed
			}
		//}
	}
} else {
	//obj_terrain.playerpos+=(global.room_speed_set/1000000*delta_time)*master.horz*abs(_hspeed);
}
if flying=0 {
	//if onground=1 {

	var tarang=obj_terrain.player_angle_onground
	var tarang2=point_direction(0,0,_hspeed*10,_vspeed*10)+90*abs(facing-1)
if rotatebody!=(tarang * (1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/200))+ tarang2 * (1-1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/200))) {
var _diff = angle_difference(tarang, rotatebody);
var _diff2 = angle_difference(tarang2, rotatebody);

rotatebody += (_diff * 0.5 * (1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/200))+_diff2 * 0.1 * (1-1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/200)))*(1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/20000))
} else {
	rotatebody=(tarang * (1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/200))+ tarang2 * (1-1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/200)))
}
	//}

} else {
	if facing=1 {
		rotatebody=(rotatebody*59)/60
	} else {
		rotatebody=(rotatebody*59)/60
	}
	if rising=0 and obj_terrain.playeraltitude>0 {
	y+=_vspeed*(global.room_speed_set/1000000*delta_time)
	}
}
}

if master.mainmenu=1 {
	rotatebody=0
}

if healthh<=0 {
	
	oxy=0
	oxydamage=1
	oxyrate=1
	oxyresistance=0
	oxyspeed=1
	master.stemplay=0
	master.stemtime=0
	stemdamage=1
	stemrange=1
	stemrate=1
	stemresistance=0
	if deaths<master.revives {
		var rq = instance_create_layer(room_width/2,0,"uii", obj_reviveq);
		rq.ad=0
		if master.mainmenu=0 {
	global.pause=1

        audio_pause_sync_group(master.sg);
		audio_pause_all()
		
	}
		exit
		
	} else {
		//if os_type=os_ios or os_type=os_android {
		if master.adsleft>0 {
		var rq = instance_create_layer(room_width/2,0,"uii", obj_reviveq);
		rq.ad=1
		if master.mainmenu=0 {
	global.pause=1

        audio_pause_sync_group(master.sg);
		audio_pause_all()
		
	}
		master.adsleft-=1
		exit
		}
		//}
	deaths+=1
		with (master) {
			deaths+=1
	master.stemtime=0
	master.stemplay=0
{
	audio_sound_gain(sound1, 0, 0);
	audio_group_set_gain(agBass,0,0);
}
{
	audio_sound_gain(sound2, 0, 0);
	audio_group_set_gain(agDrums,0,0);
}
{
	audio_sound_gain(sound3, 0, 0);
	audio_group_set_gain(agMelodies,0,0);
}
{
	audio_sound_gain(sound4, 0, 0);
	audio_group_set_gain(agVocals,0,0);
}
		}
	instance_destroy();
	}
}

//xp pitching
if master.donda3=0 {
audio_sound_pitch(xpsound,master.keypitch*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
audio_sound_pitch(levelupsnd,master.keypitch*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
audio_sound_pitch(speak,1*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
audio_sound_pitch(hurtsnd,1*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
audio_sound_pitch(soundscream,1*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
//audio_emitter_pitch(s_emit,1*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
} else {
	if master.ti < 2013 {
	audio_sound_pitch(xpsound,master.keypitch*1*(1-master.lower/1000)*global.room_speed_set/60)
	audio_sound_pitch(levelupsnd,master.keypitch*1*(1-master.lower/1000)*global.room_speed_set/60)
	audio_sound_pitch(speak,1*(1-master.lower/1000)*global.room_speed_set/60)
	audio_sound_pitch(hurtsnd,1*(1-master.lower/1000)*global.room_speed_set/60)
	audio_sound_pitch(soundscream,1*(1-master.lower/1000)*global.room_speed_set/60)
	//audio_emitter_pitch(s_emit,1*(1-master.lower/1000)*global.room_speed_set/60)
	} else {
		audio_sound_pitch(xpsound,master.keypitch*(master.ti/2013)*(1-master.lower/1000)*global.room_speed_set/60)
		audio_sound_pitch(levelupsnd,master.keypitch*(master.ti/2013)*(1-master.lower/1000)*global.room_speed_set/60)
		audio_sound_pitch(speak,(master.ti/2013)*(1-master.lower/1000)*global.room_speed_set/60)
		audio_sound_pitch(hurtsnd,(master.ti/2013)*(1-master.lower/1000)*global.room_speed_set/60)
		audio_sound_pitch(soundscream,(master.ti/2013)*(1-master.lower/1000)*global.room_speed_set/60)
		//audio_emitter_pitch(s_emit,(master.ti/2013)*(1-master.lower/1000)*global.room_speed_set/60)
	}
}
}

if merc=1 {
	c_cat=c_dkgray
} else {
	c_cat=c_white
}
if dodge=1 {
	c_cat=make_color_hsv(color_get_hue(c_gray)*dodge+color_get_hue(c_white)*(1-dodge),color_get_saturation(c_gray)*dodge+color_get_saturation(c_white)*(1-dodge),color_get_value(c_gray)*dodge+color_get_value(c_white)*(1-dodge));
}
if invincible>0 {
	c_cat=make_color_hsv(time*50,(invincible)*255,(1-invincible)*255)
}

if master.mainmenu=0 {
	menudir=0;
	if invincible<=0{
		invincible=0
if healthh!=healthlast  and master.damagenumbers = 1 {
	if merc=1 {
		if sign(healthh-healthlast)=-1 {
			healthh=(healthh*(50*master.einstein)+healthlast*(50*(2-master.einstein)))/100
		}
	}
	if dam=noone {
	dam= instance_create_layer(x,y,"damage",obj_damage)
	master.damgro=1
	master.fadedam=1
	if merc=1 {
		dam.merc=1;
	}
	dam.targ=self
	dam.damage=healthlast-healthh
	rage-=dam.damage
	} else {
		if sign(dam.damage) != sign(healthlast-healthh) {
			dam=noone
			dam= instance_create_layer(x,y,"damage",obj_damage)
			master.damgro=1
			master.fadedam=1
			if merc=1 {
		dam.merc=1;
	}
			dam.targ=self
			dam.damage=healthlast-healthh
			rage-=dam.damage
		} else {
		dam.damage+=healthlast-healthh
		master.damgro=1
		master.fadedam=1
		}
	}
}
	}else{
		invincible-=.003*(global.room_speed_set/1000000*delta_time);
	}
} else {
	healthh=maxhealth
}

healthlast=healthh
jumptotallast=jumptotal
if rage<0 {
	rage=0
}
image_indexprev=anicount