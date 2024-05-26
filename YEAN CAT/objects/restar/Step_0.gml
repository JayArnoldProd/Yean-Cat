/// @description Insert description here
// You can write your code in this editor
if deet=0 {
	if falling!=-1 {
	image_index=0
	}
} else {
	if falling!=-1 {
	image_index=1
	}
}

bowstr=clamp(1-(room_height/2-y)/700,0,1)*(1-(1/((xpcount+50)/50)))
starstr=clamp(1-(room_height/2-y)/700,0,1)*(1-(1/((xpcount+50)/50)))

if bowshift<100 {
bowshift+=starstr
} else {
	bowshift=0
}
if starshift<100 {
	starshift+=bowstr
} else {
	starshift=0
}

if falling=1 {
	page=deet
	if page=1 {
		stretched=1
	}
	if ddcount>0 {
	ddcount=10*clamp((room_height/2-y)/700,0,1)
	dlcount=10*clamp((room_height/2-y)/700,0,1)
	} else {
	ddcount=0
	dlcount=0
	}
} else {
	if dwavedir=1 {
		if dwav<dco {
			dwav+=.03
		} else {
			dwavedir=-1
		}
	} else {
		if dwav>0 {
			dwav-=.05
		} else {
			dwavedir=1
		}
	}
	if uwavedir=1 {
		if uwav<uco {
			uwav+=.05
		} else {
			uwavedir=-1
		}
	} else {
		if uwav>0 {
			uwav-=.05
		} else {
			uwavedir=1
		}
	}
	if falling=0 {
	page=deet
	ddcount=0
	dlcount=0
	} else {
		ddcount+=1
	dlcount+=1
	}
}
if xptime<xplength{
	repeatt=4-floor(3*sqr(xptime/xplength))
	if page=0{
	if stretchy>1 {
		if falling=1 {
		stretchy-=.04
		
		} else {
			stretchy-=.004
		}
	} else {
		stretchy=1
	}
	} else {
		if stretchy>1 {
		if falling=1 {
		stretchy-=.04
		
		} else {
			stretchy-=.004
		}
	} else {
		stretchy=1
	}
	}
} else {
	movelev=1
	if page=0{
	if falling!=-1 {
	if stretchy<1.31 {
		stretchy+=.003
	} else {
		stretchy=1.31
	}
	} else {
		if stretchy<4 {
		stretchy+=.1
	} else {
		stretchy=4
	}
	}
} else {
		if falling!=-1 {
	if stretchy<1.31 {
		stretchy+=.003
	} else {
		stretchy=1.31
	}
	} else {
		if stretchy<4 {
		stretchy+=.1
	} else {
		stretchy=4
	}
	}
}
	repeatt=0
}
{
	stretchyy=stretchy
}

if xptime>=xplength or movelev=1 {
	if master.dropgui>0 {
		master.dropgui-=(.05-.0498*master.dropgui)*(global.room_speed_set/1000000*delta_time)
	} else {
		master.dropgui=0
	}
}

time+=.05
if falling!=1 {
	repeat(repeatt) {
if xptime<xplength {
	xpcount+=xpstep
	master.characters[master.charselect,3]+=xpstep
	if xpnote=0 {
xpsoundd = audio_play_sound(xp1,0,0);
}
if xpnote=1 {
xpsoundd = audio_play_sound(xp2,0,0);
}
if xpnote=2 {
xpsoundd = audio_play_sound(xp3,0,0);
}
if xpnote=3 {
xpsoundd = audio_play_sound(xp4,0,0);
}
if xpnote=4 {
xpsoundd = audio_play_sound(xp5,0,0);
}
if xpnote=5 {
xpsoundd = audio_play_sound(xp6,0,0);
}
if xpnote=6 {
xpsoundd = audio_play_sound(xp7,0,0);
}
audio_sound_gain(xpsoundd,.5*master.mastervol*master.sfxvol,0);
xpnote2+=1
	
	
	if master.characters[master.charselect,3]>=master.characters[master.charselect,4] {
		master.characters[master.charselect,2]+=1

		if master.characters[master.charselect,3]/master.characters[master.charselect,4]>.125 {
		xpnote=0

		}
		if master.characters[master.charselect,3]/master.characters[master.charselect,4]>.25 {
		xpnote=1

		}
		if master.characters[master.charselect,3]/master.characters[master.charselect,4]>.375 {
		xpnote=2

		}
		if master.characters[master.charselect,3]/master.characters[master.charselect,4]>.5 {
		xpnote=3

		}
		if master.characters[master.charselect,3]/master.characters[master.charselect,4]>.625 {
		xpnote=4

		}
		if master.characters[master.charselect,3]/master.characters[master.charselect,4]>.75 {
		xpnote=5

		}
		if master.characters[master.charselect,3]/master.characters[master.charselect,4]>.875 {
		xpnote=6

		}
		//sound
		if xpnote=0 {
			if snd<1 {
audio_play_sound_on(myEmitter,xpsound1,0,0,.8*master.uivol*master.mastervol);
snd=1
}
}
if xpnote=1 {
	if snd<2 {
audio_play_sound_on(myEmitter,xpsound2,0,0,.8*master.uivol*master.mastervol);
snd=2
	}
}
if xpnote=2 {
	if snd<3 {
audio_play_sound_on(myEmitter,xpsound3,0,0,.8*master.uivol*master.mastervol);
snd=3
	}
}
if xpnote=3 {
	if snd<4 {
audio_play_sound_on(myEmitter,xpsound4,0,0,.8*master.uivol*master.mastervol);
snd=4
	}
}
if xpnote=4 {
	if snd<5 {
audio_play_sound_on(myEmitter,xpsound5,0,0,.8*master.uivol*master.mastervol);
snd=5
	}
}
if xpnote=5 {
	if snd<6 {
audio_play_sound_on(myEmitter,xpsound6,0,0,.8*master.uivol*master.mastervol);
snd=6
	}
}
if xpnote=6 {
	if snd<7 {
audio_play_sound_on(myEmitter,xpsound7,0,0,.8*master.uivol*master.mastervol);
snd=0
	}
}
		
		
		
		
		if levelprev<master.characters[master.charselect,2] {
			levv+=1
			audio_play_sound(uibuttonsound5,0,0,.8*master.uivol*master.mastervol);
			if instance_exists(obj_levelupsplash) {
				obj_levelupsplash.fade=1
			}
			var spla = instance_create_layer(x,y-10*master.camscale,"uiitop",obj_levelupsplash)
			spla.lev=levv
			levelprev=master.characters[master.charselect,2]
		}
		master.characters[master.charselect,3]-=master.characters[master.charselect,4]
		master.characters[master.charselect,4]+=5
	}
xptime+=1
}
}
}
al=(1-clamp((room_height/2-y)/1000,0,1))/2
if global.pause=0 and falling=0 {
	if deet=0 {
	falling=-1
	} else {
		falling=-1
	}
}
if instance_exists(yeancat) {
	if movecat!=0 {
	yeancat.x=x
	yeancat.y=y
	}
	with (yeancat) {
		healthh=maxhealth
				if rate>0 {
	rate-=1
} else {
	rate=rateset
	anicount+=1
}

if anicount=5 {
	anicount = 0
}
damaged=0
redcount[0]=0
redcount[1]=0
redcount[2]=0
redcount[3]=0
redcount[4]=0
redcount[5]=0
redcount[6]=0
redcount[7]=0
redcount[8]=0
redcount[9]=0
redcount[10]=0
redcount[11]=0
redcount[12]=0
redcount[13]=0
redcount[14]=0
redcount[15]=0
redcount[16]=0
redcount[17]=0
redcount[18]=0
redcount[19]=0
redcount[20]=0
redcount[21]=0
redcount[22]=0
redcount[23]=0
redcount[24]=0
redcount[25]=0
redcount[26]=0
redcount[27]=0
redcount[28]=0
redcount[29]=0
redcount[30]=0
redcount[31]=0
redcount[32]=0
redcount[33]=0
redcount[34]=0
redcount[35]=0
redcount[36]=0
redcount[37]=0
redcount[38]=0
redcount[39]=0
redcount[40]=0
redcount[41]=0
redcount[42]=0
redcount[43]=0
redcount[44]=0
redcount[45]=0
redcount[46]=0
	}
	
}
if falling=1 {
	if deet=0 {
if y<room_height/2 {
	y+=(global.room_speed_set/1000000*delta_time)*((room_height/2-y)/30+3)
} else {
	y=room_height/2
	movecat=0
	falling=0
}

	} else {
		if y<room_height/2 {
	y+=(global.room_speed_set/1000000*delta_time)*((room_height/2-y)/30+3)
} else {
	y=room_height/2
	falling=0
}
	}
} else {
	if falling =-1 {
		master.lower-=(global.room_speed_set/1000000*delta_time)*5
		if y>0 {
	y-=(global.room_speed_set/1000000*delta_time)*((y)/20+4)
} else {
	//destroy buttons
	if movecat=2 {
		with (master) {
			audio_destroy_sync_group(sg);
		}
				with (all) {
		//instance_destroy();
	}
room_restart()
exit
	}
	if deet=0 {
	with (obj_summarybutton) {
		instance_destroy();
	}
	if instance_exists(obj_levelupsplash) {
	with (obj_levelupsplash) {
		instance_destroy();
	}
	}
	global.pause=0
	master.lower=0
	instance_destroy();
	} else {
		falling=1
		if deet=2 {
			deet=0
		}
	}
	
}
	}
}
anicount+=(global.room_speed_set/1000000*delta_time)*.03


