///STEP OF master

//pausing
if input_check_pressed("pause") {
	
if !instance_exists(restar) {
if mainmenu=0 {
	if !instance_exists(obj_levelup) and !instance_exists(obj_pickupq) {
if global.pause=0 {
	if !instance_exists(obj_pausemenu) {
		global.pause=1
		audio_pause_all();
		audio_play_sound(pausesound1,0,0,.75*master.uivol*master.mastervol,0,.995+random(10)/1000)
	instance_create_layer(room_width/2,0,"uii",obj_pausemenu)
	
	}
	
} else {
	audio_play_sound(menuexitsound1,0,0,.75*master.uivol*master.mastervol,0,.995+random(10)/1000)
	global.pause=0
}

    if global.pause {
       if audio_sync_group_is_playing(sg) {
	   audio_pause_sync_group(sg);
	   }
		
    } else {
        if !audio_sync_group_is_playing(sg) {
		audio_resume_sync_group(sg);
		}
		audio_resume_all();
    }
}
} else {
}
}

}


if keyboard_check(ord("D")) and keyboard_check(ord("E")) and keyboard_check_pressed(ord("V")) {
	if devmode=0 {
		devmode=1
	} else {
		devmode=0
	}
}

if !instance_exists(obj_jayarnoldlogo) and !instance_exists(alphamessage) {
	if playername = "" {
		if !instance_exists(obj_nameplate) {
		os_is_network_connected() {
		instance_create_layer(room_width/2,0,"uiitop",obj_nameplate)
		}
		}
	}
}

var currentControllerState = gamepad_is_connected(0);
if (global.control_type == 0 || currentControllerState != global.lastControllerState) {
    check_control_type();  // This function would set global.control_type appropriately
    global.lastControllerState = currentControllerState;  // Update the last known state
}

//when no boss
if bboo>=0 {
if focustime >= 0 {
if instance_exists(obj_boss) {
	if focustime<1 {
if focusonboss<1 {
	focusonboss+=.01
	focustime+=.01
	
} else {
	focusonboss=1
	focustime+=.005
}
	} else {
		focustime=-1
		bboo=-1
	}

camovx=(obj_boss.x-room_width/(4*camscale))
camovx=(obj_boss.y-room_height/(4*camscale))
bboo=1
}	else {
	if focusonboss>0 {
	focusonboss-=.01
} else {
	focusonboss=0
	camovx=0
camovy=0
}


}
} else {
	if !instance_exists(obj_boss) {
			if focusonboss>0 {
	focusonboss-=.01
} else {

		if focusonboss>0 {
	focusonboss-=.01
} else {

	focusonboss=0
	focustime=0
}
}
//bboo=0
		
	} else {
camovx=(obj_boss.x-room_width/(4*camscale))/2
camovx=(obj_boss.y-room_height/(4*camscale))/2
		if focustime<0 {
			focustime+=.01
		} else {
			focustime=0
			
				if focusonboss>0 {
	focusonboss-=.01
} else {
camovx=0
camovy=0
	focusonboss=0
	focustime=0
}
		}
	}
}
if instance_exists(obj_levelup) or instance_exists(obj_pickupq) or global.pause=1 {
	focusonboss=0
}
} else {
	if instance_exists(obj_boss) {
		bboo=0
	} else {
	if focusonboss>0 {
		focusonboss-=.01
	} else {

	focusonboss=0
	focustime=0
}
	}
}
if camovxx != camovx {
	camovxx= (camovxx*200+camovx)/201
}
if camovyy != camovy {
	camovyy= (camovyy*200+camovy)/201
}
if focusonbosss != focusonboss {
	focusonbosss = (focusonbosss*200+focusonboss)/201
}
focusonbosss=0
camera_set_view_pos(cam,960-960*(camscale-1)+camovxx*focusonbosss/2, 540-540*(camscale-1)+camovyy*focusonbosss/2)
camera_set_view_size(cam,1920*camscale*(1-focusonbosss/4),1080*camscale*(1-focusonbosss/4))

// First of all we need to set the Consent Mode, which can be used for
// debugging purposes to run tests as a  user in a different geographic area;
// more info: Consent Mode. This function will generate an ASYNC SOCIAL EVENT.

if init=1 {
version="0.6.0"
if legacyversion="0.5.0" {
	//for (var gg=0; gg<array_length(splash);gg++) {
	splash[0]="Playing since Alpha 0.5.0"
	//}
}
if infouppdate=0 {

AdMob_Consent_RequestInfoUpdate(AdMob_Consent_Mode_PRODUCTION);

}
if infouppdate=1 {
var rewarded_id = "ca-app-pub-3940256099942544/1033173712"
if os_type=os_ios {
	rewarded_id = "ca-app-pub-1730979025956248/3384722951"
}
if os_type=os_android {
	rewarded_id = "ca-app-pub-1730979025956248/7811053129"
}
AdMob_RewardedVideo_Init(rewarded_id);
	//if !instance_exists(ad_manager) {
	//instance_create_layer(0,0,"uiitop",ad_manager)
	//}
}

if showad=1 {
	if noad=0 {
	AdMob_RewardedVideo_Show()
	global.pause=1
	showad=2
	}
}
}



if instance_exists(yeancat) {
	if master.mainmenu=0 {
	audio_listener_position((room_width/2+yeancat.x)/2,(room_height/2+yeancat.y)/2,600);
	} else {
		audio_listener_position(room_width/2,room_height/2,0);
	}
} else {
audio_listener_position(room_width/2,room_height/2,0);
}
/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_logo) {
	splashtime+=.05
	if obj_logo.onscreen!=0 {
if loading<=0 {
	if splashalpha<string_length(chosensplash) {
	splashalpha+=.1*(global.room_speed_set/1000000*delta_time)
	}
}
	} else {
		splashalpha= splashalpha*30/31
	}
splashangle=13+10 * sin((2 * pi / (string_length(chosensplash))) * (splashtime))
if splashtime>string_length(chosensplash) {
	splashtime=0
}
} else {
	splashtime=0
}
//if keyboard_check(vk_left) {
//if scaleg>.5 {
//	scaleg-=.01
//} else {
//	scaleg=.5
//}
//}
//if keyboard_check(vk_right) {
//if scaleg<1 {
//	scaleg+=.01
//} else {
//	scaleg=1
//}
//}
//if keyboard_check(vk_up) {
//	if keyboard_check(vk_shift) {
//		debugvar2+=.1
//	} else {
//	debugvar+=.01
//	}
//	//love+=
//	//if instance_exists(yeancat) {
//	//	yeancat.maxhealth=10+love
//	//} 
//}
//if keyboard_check(vk_down) {
//		if keyboard_check(vk_shift) {
//		debugvar2-=.1
//	} else {
//debugvar-=.01
//	}
	//love-=1
	//if instance_exists(yeancat) {
	//	yeancat.maxhealth=10+love
	//} 

//}
if mainmenu=0 {
if os_type= os_ios or os_type=os_android {
if os_is_paused() {
if !instance_exists(restar) {

	if !instance_exists(obj_levelup) and !instance_exists(obj_pickupq)  and !instance_exists(obj_reviveq) {
if global.pause=0 {
	if !instance_exists(obj_pausemenu) {
		global.pause=1
	instance_create_layer(room_width/2,0,"uii",obj_pausemenu)
	
	}
	}
}
}
}
}


    if global.pause {
	//	if start=1 {
	//	if audio_sync_group_is_playing(sg) {
	//   audio_pause_sync_group(sg);
	//   }
	 //  audio_pause_all();
	//}
 
    } else {
		//if !audio_sync_group_is_playing(sg) {
	   audio_resume_sync_group(sg);
	   //}
	  //audio_resume_all();
	   
	}
	} else {
		if splashreset>0 {
	splashreset-=1
} else {
	splashchoice=irandom(array_length(splash)-1);
chosensplash=splash[splashchoice]
splashreset=splashresetset
}

		if instance_exists(obj_statmenu) or instance_exists(obj_achievments) or instance_exists(obj_options) {
		if dollarhide<180 {
			dollarhide+=1
		} else {
			dollarhide=180
		}
		} else {
			if dollarhide>0 {
			dollarhide-=1
		} else {
			dollarhide=0
		}
		}
	}



if muteall=1 {
	mastervol=0
} else {
	mastervol=mastervolset
}

if mainmenu=0 {
	if global.pause=0 {
		if countdi=1{
			for (i=0; i<array_length(soundmanager); i++) {
			soundmanager[i,0]=clamp(soundmanager[i,0]-1,0,9999)
			soundmanager[i,1]=clamp(soundmanager[i,1]-1,0,9999)
			soundmanager[i,2]=clamp(soundmanager[i,2]-1,0,9999)
			soundmanager[i,3]=clamp(soundmanager[i,3]-1,0,9999)
			soundmanager[i,4]=clamp(soundmanager[i,4]-1,0,9999)
			soundmanager[i,5]=clamp(soundmanager[i,5]-1,0,9999)
			}
for (i=0; i<array_length(responsecount); i++) {
			responsecount[i,0]=clamp(responsecount[i,0]-1,0,9999)
			responsecount[i,1]=clamp(responsecount[i,1]-1,0,9999)
			responsecount[i,2]=clamp(responsecount[i,2]-1,0,9999)
			responsecount[i,3]=clamp(responsecount[i,3]-1,0,9999)
			responsecount[i,4]=clamp(responsecount[i,4]-1,0,9999)
			responsecount[i,5]=clamp(responsecount[i,5]-1,0,9999)
			}
countdi=0
	}
		if instance_exists(yeancat) {
			grav=obj_terrain.planets[obj_terrain.planet,2]/15
			if fadedam>0 {
					fadedam-=.0001
					} else {
						fadedam=0
					}
			damef=(damef*20+clamp((1-yeancat.healthh/yeancat.maxhealth)*2-1,0,1))/21
			if damef>0 {
				damgro+=.001*(1.1-damef)
				
				if damgro>1.25{
					damgro=1.25
					
				}
			} else {
				damef=0
			}
		} else {
			damef=(damef*20)/21
		if damef<.01 {
			damgro=1
		}
		}
		killcount=0
		for (i=0; i<array_length(master.runkills); i++) {
	killcount+=master.runkills[i]
}
	} else {
		if damef>0 {
			damef-=.05
			if damgro>1 {
			damgro-=.05
			}
		} else {
			damef=0
			damgro=1
		}
	}

	if instance_exists(yeancat) {
		if global.pause = 0 {
rspeed=60-15*(yeancat.oxy/5)
		}
} else {
	if global.pause = 0 {
	rspeed=60
	}
}

if global.pause=1 {
	rspeed=60
}

if round(global.room_speed_set*1000) != round(rspeed*1000) {
	global.room_speed_set-=(global.room_speed_set-rspeed)/60
} else {
	global.room_speed_set=rspeed
}
game_set_speed(global.room_speed_set, gamespeed_fps)
		if !instance_exists(obj_levelup) and !instance_exists(obj_pickupq) and !instance_exists(obj_upgrademenu) and !instance_exists(obj_pausemenu)  and !instance_exists(obj_reviveq) {
	if dollarslide<1 {
		dollarslide+=.01
	} else {
		dollarslide=1
	}
		} else {
			if instance_exists(restar) {
				if restar.xptime>restar.xplength or restar.movelev=1 {
						if dollarslide>0 {
		dollarslide-=.02
	} else {
		dollarslide=0
	}
				}
		} else {
				if dollarslide>0 {
		dollarslide-=.02
	} else {
		dollarslide=0
	}
		}
		
			
		}
		
} else {
rhythm=((1+.91*2*(1-(1-((master.characters[master.charselect,6]-1)/clamp(9+(master.characters[master.charselect,6]-(10*((clamp(master.characters[master.charselect,6],0,99999))/sqr(master.characters[master.charselect,6])))),1,99999))))+.01*(master.characters[master.charselect,6]-1)))
flow=((1+.91*2*(1-(1-((master.characters[master.charselect,7]-1)/clamp(9+(master.characters[master.charselect,7]-(10*((clamp(master.characters[master.charselect,7],0,99999))/sqr(master.characters[master.charselect,7])))),1,99999))))+.01*(master.characters[master.charselect,7]-1)))
lyricism=((1+.91*2*(1-(1-((master.characters[master.charselect,5]-1)/clamp(9+(master.characters[master.charselect,5]-(10*((clamp(master.characters[master.charselect,5],0,99999))/sqr(master.characters[master.charselect,5])))),1,99999))))+.01*(master.characters[master.charselect,5]-1)))
swag=((1+.91*2*(1-(1-((master.characters[master.charselect,8]-1)/clamp(9+(master.characters[master.charselect,8]-(10*((clamp(master.characters[master.charselect,8],0,99999))/sqr(master.characters[master.charselect,8])))),1,99999))))+.01*(master.characters[master.charselect,8]-1)))


	if dollarslide>0 {
		dollarslide-=.01
	} else {
		dollarslide=0
	}
}
if instance_exists(obj_upgrademenu) {
	for (i=0; i<array_length(obj_upgrademenu.upgrades); i ++) {
			if obj_upgrademenu.upgrades[i,2]=-1 {
				notice[i,3]=-1
			}
		}
}

if mainmenu=1 {
	for (i=0; i<array_length(characters);i++) {
		if master.characters[master.charselect,3]>=master.characters[master.charselect,4] {
			master.characters[master.charselect,2]+=1
			master.characters[master.charselect,3]=0
			master.characters[master.charselect,4]+=5
		}
	}
	if instance_exists(obj_jayarnoldlogo) {
	if loading>0 {
	loading-=.005
}
	} else {
		if loading>0 {
	loading-=.01
}
	}
for (i=0 ; i< array_length(passives) ;i++) {
		if passives[i,2] = 1 {
			if notice[i,0] = 0 {
				if notice[i,3] != -1 {
				notice[i,0] = 1
				} else {
				notice[i,0] = 2
				}
			}
		}
	}
	}
	if instance_exists(yeancat) {
		if aspeedshow!= aspeed {
			aspeedshow= (aspeedshow*10+aspeed)/11
		}
		var fme=sqr(abs(yeancat._hspeed))+sqr(abs(yeancat._vspeed))
		if !is_nan(fme) {
		aspeed=(sqrt(fme))
		} else {
			aspeed=0
		}
	} else {
		aspeed=0
	}
speedheat=clamp(speedheat+(aspeed*1000000)/(heatseconds*10),0,aspeed*1000000)
if revani>0 {
	revani-=.01
}
if speedheat>0 {
	speedscale=.5+clamp(sqrt(aspeed)/100,0,2)/4
	speedscal=(speedscal*60+speedscale)/61
	sc1=make_color_hsv((191*(speedheat/1000000)/10)% 256,255*clamp(speedheat/2000000,0,1),255*clamp((speedheat/1000000)/30,0,1))
	sc2=make_color_hsv((255*(speedheat/1000000)/10)% 256,255*clamp(speedheat/2000000,0,1),255*clamp((speedheat/1000000)/30,0,1))
	sc3=make_color_hsv((255*(speedheat/1000000)/9)% 256,255*clamp(speedheat/2000000,0,1),255*clamp((speedheat/1000000)/30,0,1))
	sc4=make_color_hsv((191*(speedheat/1000000)/8)% 256,255*clamp(speedheat/2000000,0,1),255*clamp((speedheat/1000000)/30,0,1))
	sca=.5*power((speedscale/speedscal),10) +.5*clamp(speedheat/30000000,0,1)
	//.5+.5*clamp((levelheat/1000000)/10,0,1)
} else {
	speedheat=0
	speedscale=1
	sc1=c_black
	sc2=c_black
	sc3=c_black
	sc4=c_black
	sca=1
}
if levelheat>0 {
	lvlscale=1+clamp(sqrt(levelheat/1000000)/10,0,1)/2
	lvlscal=(lvlscal*60+lvlscale)/61
	lc1=make_color_hsv((191*(levelheat/1000000)/10)% 256,255*clamp(levelheat/2000000,0,1),255*clamp((levelheat/1000000)/30,0,1))
	lc2=make_color_hsv((255*(levelheat/1000000)/10)% 256,255*clamp(levelheat/2000000,0,1),255*clamp((levelheat/1000000)/30,0,1))
	lc3=make_color_hsv((255*(levelheat/1000000)/9)% 256,255*clamp(levelheat/2000000,0,1),255*clamp((levelheat/1000000)/30,0,1))
	lc4=make_color_hsv((191*(levelheat/1000000)/8)% 256,255*clamp(levelheat/2000000,0,1),255*clamp((levelheat/1000000)/30,0,1))
	lca=.5*power((lvlscale/lvlscal),10) +.5*clamp(levelheat/30000000,0,1)
	//.5+.5*clamp((levelheat/1000000)/10,0,1)
} else {
	levelheat=0
	lvlscale=1
	lc1=c_black
	lc2=c_black
	lc3=c_black
	lc4=c_black
	lca=1
}

mobfreqset=(100*(1/(curse+1))*(1/((level-1)/200+1))*sqr(1+(1-abs(obj_terrain.systemposition-180)/180))/(lookingfortrouble+1))/(1+master.ti/2014)
if spawnthings=1 {
    for (i=0; i<array_length(spaceboss); i++) {
        if round(obj_terrain.systemposition*10) == spaceboss[i,0]*10 {
            if spaceboss[i,10] == 0 {
                if spaceboss[i,8] == 1 {
                    var bosss = instance_create_layer(room_width*3/4, room_height/2, "player", obj_boss);
                    //position //1name //2health //3resistance0-1invincible /4/rate //5attacktype //6damage //7movetype //8image
                    bosss.bossid = spaceboss[i,12]
                    bosss.position = spaceboss[i,0]
                    bosss.namee = spaceboss[i,1]
                    bosss.healthh = spaceboss[i,2]
                    bosss.maxhealth = spaceboss[i,2]
                    bosss.resistance = spaceboss[i,3]
                    bosss.damage = spaceboss[i,6]
                    bosss.attackspeed = spaceboss[i,4]
                    bosss.attacktype = spaceboss[i,5]
                    bosss.movetype = spaceboss[i,7]
                    bosss.sprite_index = spaceboss[i,9]
                    bosss.bosstype = spaceboss[i,11]
                    bosss.lookid = spaceboss[i,12]
                    bosss.flying = 1
                    bosss.bossaltitude = 40000
                    with (bosss) {
                        event_perform(ev_other, ev_user0);
                    }
                    spaceboss[i,10] = 1;
                }
            }
        }
    }
}

if selectedstage=0 {
	//nyan cat
	donda3=0
} else {
if selectedstage=1 {
//donda3
donda3=1
}
}
var vpp=0
if instance_exists(yeancat) {
	if yeancat.positionplace=0 {
		vpp=1
	}
}
if mainmenu=0 and !instance_exists(restar) and !instance_exists(obj_notification) and vpp=1 {

		if slidegui>.005 {
			scaleg=(scaleg*30+scalegg)/31
		slidegui=slidegui*30/31
	} else {
		scaleg=scalegg
		slidegui=0
	}
	if dropgui<1 {
		dropgui+=(.05-.0498*dropgui)*(global.room_speed_set/1000000*delta_time)*speedgui
	} else {
		dropgui=1
		speedgui=1
	}
} else {
	if instance_exists(obj_notification) {
		if obj_notification.falling=-1 {
				if slidegui>.005 {
			scaleg=(scaleg*30+scalegg)/31
		slidegui=slidegui*30/31
	} else {
		scaleg=scalegg
		slidegui=0
	}
		}
	//if dropgui>0 {
	//	dropgui*=.98
	//} 
	if slidegui=0 {
	scalegg=scaleg
	}
	scaleg=(scaleg*30+.5)/31
	if slidegui<.995 {
		slidegui=(slidegui*30+1)/31
	} else {
		scaleg=.5
		slidegui=1
	}
	}
}


if stems_loaded=false {
	exit
}


if global.pause=0 or instance_exists(restar) {
starfreq-=1*(global.room_speed_set/1000000*delta_time)
if starfreq<0 {
	instance_create_layer(room_width/2+1920*master.camscale/2+300,room_height/2+(random(1080*master.camscale)-1080*master.camscale/2),"stars",star)
	starfreq=round((starfreqset+random(starfreqset/4))/(sqr((speedd+40)/50)))
}
}

if master.mainmenu=0 {
	if !instance_exists(obj_pausemenu) and !instance_exists(restar) {
	} else {
			if dolcen<50 {
		dolcen=(dolcen*30+50)/31
		} else {
			dolcen=50
		}
			if dollarfade<1{
		dollarfade+=.005*global.room_speed_set/60
		} else {
			dollarfade=1
		}
		}
	if global.pause !=1 {
		if levelheat>0 {
		levelheat-=delta_time/heatseconds*(clamp(power(levelheat/1000000,1.5),1,99999))
		if levelheat<0 {
			levelheat=0;
		}
		}
		if speedheat>0 {
		speedheat-=delta_time/heatseconds*(clamp(power(speedheat/1000000,1.5),1,99999))
		if speedheat<0 {
			speedheat=0;
		}
		}
	}
	if !instance_exists(obj_pickupq) and !instance_exists(obj_pausemenu)  and !instance_exists(obj_reviveq) {
		lvlscal=(lvlscal*60+lvlscale)/61
		speedscal=(speedscal*60+speedscale)/61
	}
if !instance_exists(restar) and !instance_exists(obj_pausemenu) and  !instance_exists(obj_levelup) and !instance_exists(obj_pickupq) and !instance_exists(obj_reviveq) and lower=0 {
if camscale<2 {
	var lambda = -log10(-0.1 / (0 - 1)) / 1913;
    
    // Calculate x(t)
    var scaleup = 1 + (0 - 1) * exp(-lambda * (1000 * ((master.speedd / 10) - 1))*(1-(1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/20000))));
	
	camscale=(camscale*50+1+scaleup)/51
}
} else {
	var scaa=0
	if instance_exists(restar) {
		if restar.falling=-1 {
			scaa=1
		}
	}
	if instance_exists(obj_pausemenu) {
		if obj_pausemenu.falling=-1 {
			scaa=1
		}
	}
	if instance_exists(obj_reviveq) {
		if obj_reviveq.falling=-1 {
			scaa=1
		}
	}
	if instance_exists(obj_levelup) {
		if obj_levelup.falling=-1 {
			scaa=1
		}
	}
	if instance_exists(obj_levelup) {
		if obj_levelup.falling=-1 {
			scaa=1
		}
	}
	if scaa=1 {
		if camscale<2 {
	var lambda = -log10(-0.1 / (0 - 1)) / 1913;
    
    // Calculate x(t)
    var scaleup = 1 + (0 - 1) * exp(-lambda * (1000 * ((master.speedd / 10) - 1))*(1-(1/(1+(obj_terrain.player_height_fromground+obj_terrain.playeraltitude)/20000))));
	
	camscale=(camscale*50+1+scaleup)/51
}
	}
}

sss=camscale*1.405



//mixaudio
if stemtime>0 and lower = 0 {
if bassvol=1 {
	audio_sound_gain(sound1, .5*mastervol*musicvol, 0);
	audio_group_set_gain(agBass,.7*mastervol*musicvol,0);
} else {
	audio_sound_gain(sound1, 0, 0);
	audio_group_set_gain(agBass,0,0);
}
if drumvol=1 {
	audio_sound_gain(sound2, .5*mastervol*musicvol, 0);
	audio_group_set_gain(agDrums,.7*mastervol*musicvol,0);
} else {
	audio_sound_gain(sound2, 0, 0);
	audio_group_set_gain(agDrums,0,0);
}
if melodyvol=1 {
	audio_sound_gain(sound3, .5*mastervol*musicvol, 0);
	audio_group_set_gain(agMelodies,.7*mastervol*musicvol,0);
} else {
	audio_sound_gain(sound3, 0, 0);
	audio_group_set_gain(agMelodies,0,0);
}
if vocalvol=1 {
	audio_sound_gain(sound4, .5*mastervol*musicvol, 0);
	audio_group_set_gain(agVocals,.7*mastervol*musicvol,0);
} else {
	audio_sound_gain(sound4, 0, 0);
	audio_group_set_gain(agVocals,0,0);
}

audio_sound_gain(music, 0, 0);
audio_group_set_gain(agMusic,0,0);
} else {
audio_sound_gain(sound1, 0, 0);
audio_sound_gain(sound2, 0, 0);
audio_sound_gain(sound3, 0, 0);
audio_sound_gain(sound4, 0, 0);
//if loading<=0 {

//}
audio_group_set_gain(agBass,0,0);
audio_group_set_gain(agDrums,0,0);
audio_group_set_gain(agMelodies,0,0);
audio_group_set_gain(agVocals,0,0);
}
audio_sound_gain(music, .6*mastervol*musicvol, 0);
audio_group_set_gain(agMusic,.6*mastervol*musicvol,0);


if !instance_exists(obj_levelup) and !instance_exists(obj_pickupq) and !instance_exists(obj_reviveq) and !instance_exists(obj_pausemenu) {
if global.pause=1 {
	if audio_sync_group_is_playing(sg) {
	audio_pause_sync_group(sg);
	}
	audio_pause_all();
	exit
} else {
	if !audio_sync_group_is_playing(sg) {
		audio_resume_sync_group(sg);
	}
	audio_resume_all();
}
} else {
	if start=1 {
	exit
	}
}
if start=0 {
	 var adjusted_bpm = global.target_bpm * (1 - lower / 1000) * global.room_speed_set / 60;
	global.target_bpm = adjusted_bpm;  // Update target BPM based on game logic
    adjust_pitch(get_delta_time());  // Adjust pitch based on delta time
	
	exit;
}
if instance_count>400+level/2 {
	with (obj_damage) {
		instance_destroy()
	}
	with (obj_moneycount) {
		instance_destroy()
	}
}

if instance_count>450+level/2 {
	with (enemy) {
		instance_destroy()
	}
}
if instance_count>500+level/2 {
	with (xporb) {
		instance_destroy()
	}
	with (dondadollar)
	instance_destroy()
}


if xpbuff>=xpto {
	updatetext=1
}
	if updatetext=1 {
weapontext=[
["A Toy Gun","+10% Attack Rate\n+33% Aim Speed","x2 Damage","+1 Penetration","+15% Attack Rate\n+33% Aim Speed","+50% Damage","+20 Degrees Range\n+50% Aim Speed","+20% Attack Rate\n+50% Projectile Speed","+25% Projectile Size\n+50% Damage\n+15% Attack Rate","+1 Projectile",""],
["","","","","","","","","","",""],
["The Twitter Machine","x2 Damage","+1 Projectile","+10% Attack Rate\nand + 50% Projectile Speed","Grabs 2 Enemies","x2 Damage","+1 Projectile","+15% Attack Rate","+50% Projectile Size","x2 Damage",""],
["","","","","","","","","","",""],
["Hallelujah","50% Damage\n+1 Harmony","+20% Attack Rate\n+1 Penetration","+1 Harmony\n25% Volume (Size)","+50% Damage\n+33% Duration","+20% Attack Rate\n+1 Harmony","+25% Volume\n+33% Duration","+33% Damage","+1 Harmony\n+1 Penetration","x2 Damage\n+25% Volume",""],
["","","","","","","","","","",""],
["Bass Bumpin'","x1.5 Damage","+33% Range","+50% Rate","+66% Damage","+25% Range","+33% Rate","+50% Damage","+15% Range","x2 Damage",""],
["","","","","","","","","","",""],
["Break Free","+10% Range\n+25% Rotation Speed","+25% Duration\n+10% Rotationspeed","+10% Attack Rate","+25% Damage\n+25% Duration","+25% Rotation Speed","+15% Attack Rate","+50% Damage","+50% Rotation Speed","+25% Range",""],
["","","","","","","","","","",""],
["In the Name of the Father","+10% Rate","+25% Range","+1 Amount","+50% Damage","+25% Range","+15% Rate","+1 Amount","+25% Range","x2 Damage",""],
["","","","","","","","","","",""],
["","","","","","","","","","",""],
["Enter Zen","2nd Chakra\n+50% Damage","3rd Chakra\n+25% Range","4th Chakra","5th Chakra\n+50% Damage","6th Chakra\n+25% Range","7th Chakra","+33% Duration","+50% Orb Speed","+1 Penetration",""],
["","","","","","","","","","",""],
["It's a Brewin'","+25% Range","+25% Damage","+33% Attack Rate","+1 Chain Length","+25% Duration","+50% Damage","+33% Attack Rate","+25% Range","+1 Chain Length",""],
["","","","","","","","","","",""],
["I'm a Sensitive Person","+33% Fish Speed","+25% Duration","+10% Attack Rate","+50% Damage\n+25% Fish Size","+25% Duration","+10% Attack Rate","+33% Fish Speed","+25% Duration\n+10% Attack Rate","+50% Damage\n+25% Fish Size",""],
["I wanna go there","+50% Damage\n+50% Orbit Speed","+25% Radius\n+25% Size","+50% Oscilation Rate\nx2 Oscillation Range","x2 Damage","+25% Radius\n+50% Orbit Speed","+50% Oscilation Rate\nx2 Oscillation Range","x2 Damage","+25% Radius\n+50% Size","x3 Damage",""],
["Blacka Blacka!","+50% Fire Rate","+50% Damage\n+50% Aim Speed","+50% Fire Rate\n+50% Projectile Speed","+1 Penetration","+50% Damage/n+50% Projectile Speed","+50% Fire Rate\n+50% Aim Speed","+50% Projectile Speed\n+50% Fire Rate","+50% Projectile Size\n+20% Attack Rate\n+20% Damage","+50% Fire Rate",""],
["","","","","","","","","","",""],
["Defensive Weapon","20% Move Speed","+25% Range\n+50% Size","+20% Move Speed","Spikes","+25% Range\n+10% Move Speed","+20% Move Speed","More Spikes","+25% Range\n+50% Size","x2 Damage",""],
["Give them Scars","+50% Movement Speed","+25% Range\n+25% Size","+50% Attack Rate\nx2 Range","x2 Damage","+25% Range\n+50% Movement Speed","+50% Attack Rate\nx2 Range","x2 Damage","+25% Range\n+25% Size","x3 Damage",""],
["La Flame","+33% Fire Speed","+25% Duration","+10% Attack Rate","+50% Damage\n+25% Projectile Size","+25% Duration","+15% Attack Rate","+33% Fire Speed","+50% Damage","+25% Size\n+25% Duration",""],
["","","","","","","","","","",""],
["Look in my Eye","+50% Damage\n+10% Move Speed","+25% Range\n+50% Size","+50% Blink Rate","x2 Damage","+25% Range\n+10% Move Speed","+50% Blink Rate","+50% Damage","+25% Range\n+50% Size","x2 Damage",""],
["","","","","","","","","","",""],
["Howl at the Moon","+50% Damage","+50% Duration","+10% Rate","+50% Wolf Speed","+25% Duration","+25% Wolf Speed\n+1 Attack Count","+33% Duration","+10% Rate\n+50% Damage","+33% Wolf Speed\n+1 Attack Count",""],
["","","","","","","","","","",""],
["That S**t is Bright","x2 Damage","+33% Range","+33% Rate","+50% Damage","+25% Range","+33% Rate","+50% Damage","+15% Range","x2 Damage",""],
["","","","","","","","","","",""],
["","","","","","","","","","",""],
["Imagination","+50% Damage","+25% Range","+50% Damage","+25% Range","+50% Damage","+25% Range","+50% Damage","+25% Range","+50% Damage",""],
["","","","","","","","","","",""],
["","","","","","","","","","",""],
["","","","","","","","","","",""],
["","","","","","","","","","",""],
["","","","","","","","","","",""]
]



//ldamage*(1+(.1*passives[18,3])*einstein)
passivetext=[
"+"+string((((1+.05*(master.notice[0,2])*leinstein)*(1+(.05*(master.passives[0,3]+1))*einstein)-1)-((1+.05*(master.notice[0,2])*leinstein)*(1+(.05*master.passives[0,3])*einstein)-1))*100)+"% Luck\n("+string((((1+.05*(master.notice[0,2])*leinstein)*(1+.05*(master.passives[0,3]+1)*einstein))-1)*100)+"%)",
"+"+string(((1-(1/(1+.02*((master.passives[1,3]+1)*einstein*master.luck)+(.02*(master.notice[1,2])*leinstein*master.lluck))))-(1-(1/(1+.02*(master.passives[1,3]*einstein*master.luck)+(.02*(master.notice[1,2])*leinstein*master.lluck)))))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/(1+.02*((master.passives[1,3]+1)*einstein*master.luck)+(.02*(master.notice[1,2])*leinstein*master.lluck))))*100)+"%)",
"+"+string((((1+.05*(master.notice[2,2])*leinstein)*(1+.05*(master.passives[2,3]+1)*einstein))-((1+.05*(master.notice[2,2])*leinstein)*(1+(.05*master.passives[2,3])*einstein)))*100)+"%\nEnemy Health,\nQuantity, & Speed\n("+string((((1+.05*(master.notice[2,2])*leinstein)*(1+.05*(master.passives[2,3]+1)*einstein))-1)*100)+"%)",
"Deal +"+string((((master.notice[3,2])*10*leinstein+20*clamp((master.passives[3,3]+1),0,1)+10*(clamp(master.passives[3,3]-1+1,0,99999))*einstein)-(master.notice[3,2]*10*leinstein+20*clamp(master.passives[3,3],0,1)+10*(clamp(master.passives[3,3]-1,0,99999))*einstein)))+"% Damage\nWhen below half Health\n("+string(((master.notice[3,2])*10*leinstein+20*clamp((master.passives[3,3]+1),0,1)+10*(clamp((master.passives[3,3]-1+1),0,99999))*einstein))+"%)",
"+"+string(((1-((1-(.05*(master.passives[4,3]+1)*einstein))/(1+.05*(master.notice[4,2])*leinstein)))-((1-((1-(.05*(master.passives[4,3])*einstein))/(1+.05*(master.notice[4,2])*leinstein)))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(master.passives[4,3]+1)*einstein))/(1+.05*(master.notice[4,2])*leinstein)))*100)+"%)",
"Heal "+string(((((1+.02*(master.notice[5,2])*leinstein)*(1+.02*(master.passives[5,3]+1))*einstein)-1)-(((1+.02*(master.notice[5,2])*leinstein)*(1+.02*master.passives[5,3])*einstein)-1))*100)+"% of Damage Dealt\n("+string((((1+.02*(master.notice[5,2])*leinstein)*(1+.02*(master.passives[5,3]+1))*einstein)-1)*100)+"%)",
"+"+string((((1+.1*(master.notice[6,2])*leinstein)*(1+.1*(master.passives[6,3]+1)*einstein)-1)-((1+.1*(master.notice[6,2])*leinstein)*(1+(.1*master.passives[6,3])*einstein)-1))*100)+"% Weapon & Ability Range\n("+string(((1+.1*(master.notice[6,2])*leinstein)*(1+(.1*(master.passives[6,3]+1))*einstein)-1)*100)+"%)",
"+"+string((((.05*(master.notice[7,2])*leinstein)+(.05*(master.passives[7,3]+1))*einstein)-((.05*(master.notice[7,2])*leinstein)+(.05*master.passives[7,3])*einstein))*100)+"% Movement\nSpeed & Handling ("+string(((.05*(master.notice[7,2])*leinstein)+(.05*(master.passives[7,3]+1))*einstein)*100)+"%)",
"+"+string((((1+.05*(master.notice[8,2])*leinstein)*(1+.05*(master.passives[8,3]+1))*einstein-1)-((1+.05*(master.notice[8,2])*leinstein)*(1+.05*master.passives[8,3])*einstein-1))*100)+"% XP\n("+string(((1+.05*(master.notice[8,2])*leinstein)*(1+.05*(master.passives[8,3]+1))*einstein-1)*100)+"%)",
"(Heal "+string((floor((clamp(master.passives[9,3]+1,0,1)+clamp(master.passives[9,3]-4+1,0,10000)+clamp(master.notice[9,2],0,1))*einstein+(.5*(master.notice[9,2])*leinstein))))+" HP Every "+string((5-clamp(master.passives[9,3],0,4))/(1+.05*master.notice[9,2]*leinstein))+" Seconds+\n("+string(floor((clamp((master.passives[9,3]+1),0,1)+clamp((master.passives[9,3]-4+1),0,10000)+clamp(master.notice[9,2],0,1))*einstein+(.5*master.notice[9,2]*leinstein))/((5-clamp((master.passives[9,3]+1),0,4))/(1+.05*master.notice[9,2]*leinstein)))+" HP/Second)",
"+"+string(((.02*(master.passives[10,3]+1))*einstein*master.damage+(.02*(master.notice[10,2])*leinstein*master.ldamage)-(.02*master.passives[10,3])*einstein*master.damage+(.02*master.notice[10,2]*leinstein*master.ldamage))*100)+"% Retalitory Damage\n("+string(((.02*(master.passives[10,3]+1))*einstein*master.damage+(.02*(master.notice[10,2])*leinstein*master.ldamage))*100)+"%)",
"+"+string((((.05*(master.notice[11,2])*leinstein*master.lrange)+(1+.05*(master.passives[11,3]+1)*master.range*einstein))-((.05*master.notice[11,2]*leinstein*master.lrange)+(1+(.05*(master.passives[11,3]))*master.range*einstein)))*100)+"% Attractor Pickup Range\n("+string(((.05*(master.notice[11,2])*leinstein*master.lrange)+(1+(.05*(master.passives[11,3]+1))*master.range*einstein)-1)*100)+"%)",
"+"+string((((1+.05*(master.notice[12,2])*leinstein)*(1+.1*(master.passives[12,3]+1)*einstein)-1)-((1+.05*(master.notice[12,2])*leinstein)*(1+(.1*master.passives[12,3])*einstein)-1))*100)+"% Attack Rate\n("+string(((1+.05*(master.notice[12,2])*leinstein)*(1+(.1*(master.passives[12,3]+1))*einstein)-1)*100)+"%)",
"+"+string((((1+.05*(master.notice[13,2])*leinstein)*(1+.1*(master.passives[13,3]+1)*einstein)-1)-((1+.05*(master.notice[13,2])*leinstein)*(1+(.1*master.passives[13,3])*einstein)-1))*100)+"% Attack Duration\n("+string(((1+.05*(master.notice[13,2])*leinstein)*(1+(.1*(master.passives[13,3]+1))*einstein)-1)*100)+"%)",
"+"+string(round(5*leinstein))+" Max Health\n("+string(round(10+master.love+5*leinstein))+"HP)",
"Every Minute,\n Take "+string(round(50/leinstein*100)/100)+"% Damage for "+string(5*(master.passives[15,3]+1))+" Seconds)",
"+"+string(1)+" Revive\nWith "+string(clamp((1-(1-.5*einstein)/leinstein)*100,0,100))+"% Health ("+string(master.revives+1)+")",
"+"+string(((1-(1/(1+.02*(master.passives[17,3]+1)*master.luck*einstein))/(1+(.02*(master.notice[17,2])*leinstein*(1+.05*master.notice[0,2]*leinstein)))-1)-(1-(1/(1+.02*(master.passives[17,3])*master.luck*einstein))/(1+(.02*(master.notice[17,2])*leinstein*(1+.05*master.notice[0,2]*leinstein)))-1))*100)+"% Critical Chance (x"+string((2*(.95+.05*clamp(master.passives[17,3],1,99999)))*einstein*(((.95+.05*(clamp(master.notice[17,2],1,99999)))*leinstein)))+" Damage)\n["+string((1-(1/(1+.02*(master.passives[17,3]+1)*master.luck*einstein))/(1+(.02*(master.notice[17,2])*leinstein*(1+.05*master.notice[0,2]*leinstein))))*100)+"%]",
"+"+string((((1+.1*(master.notice[18,2])*leinstein)*(1+(.1*(master.passives[18,3]+1))*einstein)-1)-((1+.1*master.notice[18,2]*leinstein)*(1+(.1*master.passives[18,3])*einstein)-1))*100)+"% Damage\n("+string(((1+.1*(master.notice[18,2])*leinstein)*(1+(.1*(master.passives[18,3]+1))*einstein)-1)*100)+"%)",
"OxyContin Spawns\nEvery 3 Minutes",
"+"+string((((1+(.1*power(clamp(master.notice[20,2],0,99999),.70))*leinstein)*(1+(.1*power(clamp(master.passives[20,3]+1,0,99999),.70)*einstein)))-(((1+(.1*power(clamp(master.notice[20,2],0,99999),.70))*leinstein)*(1+(.1*power(clamp(master.passives[20,3],0,99999),.70)*einstein)))))*100)+"% Projectile Size\n("+string(((1+(.1*power(clamp(master.notice[20,2],0,99999),.70))*leinstein)*(1+(.1*power(clamp(master.passives[20,3]+1,0,99999),.70)*einstein))-1)*100)+"%)",
"+"+string(((((1+.05*(master.notice[21,2])*leinstein)*(1+.05*(master.passives[21,3]+1))*einstein)-1)-((1+.05*(master.notice[21,2])*leinstein)*(1+.05*master.passives[21,3])*einstein-1))*100)+"% Money Value & Frequency\n("+string((((1+.05*(master.notice[21,2])*leinstein)*(1+.05*(master.passives[21,3]+1))*einstein)-1)*100)+"%)",
"Item Pickups:\n+"+string((((1+.05*(master.notice[22,2])*leinstein)*(1+.05*(master.passives[22,3]+1)*einstein)-1)-((1+.05*(master.notice[22,2])*leinstein)*(1+(.05*master.passives[22,3])*einstein)-1))*100)+"% Duration & Effect ("+string(((1+.05*(master.notice[22,2])*leinstein)*(1+(.05*(master.passives[22,3]+1))*einstein)-1)*100)+"%)",
"+"+string(((1+.1*(master.notice[23,2])*leinstein)*(1+.1*(master.passives[23,3]+1)*einstein)-(1+.1*(master.notice[23,2])*leinstein)*(1+(.1*master.passives[23,3])*einstein))*100)+"% Projectile Speed\n("+string(((1+.1*(master.notice[23,2])*leinstein)*(1+(.1*(master.passives[23,3]+1))*einstein)-1)*100)+"%)",
"+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor((master.passives[24,3]+1)*einstein+master.notice[24,2]*leinstein)))+")",
string(((((1-(.05*(master.passives[25,3]+1)*einstein))/(master.lvanish)))-(((1-(.05*(master.passives[25,3])*einstein))/(master.lvanish))))*100)+"% Enemy Eyesight\n("+string((((1-(.05*(master.passives[25,3]+1)*einstein))/(master.lvanish)))*100)+"%)",
]

passivetext2=[
["+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","",""],
["+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)"],
["+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"%\nEnemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)"],
["Deal +"+string(20*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)"],
["+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)"],
["Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)"],
["+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","",""],
["+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")"],
["+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)",""],
["Heal "+string(1*einstein)+" Health\nEvery "+string(heartseconds)+" Seconds","-1 Second\n(+"+string(heart)+" HP / "+string(heartseconds-1)+" Seconds)","-1 Second\n(+"+string(heart)+" HP / "+string(heartseconds-1)+" Seconds)","-1 Second\n(+"+string(heart)+" HP / "+string(heartseconds-1)+" Second)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)"],
["+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","",""],
["+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","",""],
["+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","",""],
["+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","",""],
["+"+string(round(5*einstein))+" Max Health\n("+string(round(10+love+5*einstein))+")","+"+string(round(5*einstein))+" Max Health\n("+string(round(10+love+5*einstein))+")","+"+string(round(5*einstein))+" Max Health\n("+string(round(10+love+5*einstein))+")","+"+string(round(5*einstein))+" Max Health\n("+string(round(10+love+5*einstein))+")","+"+string(round(5*einstein))+" Max Health\n("+string(round(10+love+5*einstein))+")","+"+string(round(10*einstein))+" Max Health\n("+string(round(10+love+10*einstein))+")","+"+string(round(10*einstein))+" Max Health\n("+string(round(10+love+10*einstein))+")","+"+string(round(10*einstein))+" Max Health\n("+string(round(10+love+10*einstein))+")","+"+string(round(10*einstein))+" Max Health\n("+string(round(10+love+10*einstein))+")","",""],
["Every Minute,\n Take "+string(round(50/einstein*100)/100)+"% Damage for "+string(5*(passives[15,3]+1))+" Seconds","Every Minute,\n Take "+string(round(50/einstein*100)/100)+"% Damage for "+string(5*(passives[15,3]+1))+" Seconds","Every Minute,\n Take "+string(round(50/einstein*100)/100)+"% Damage for "+string(5*(passives[15,3]+1))+" Seconds","Every Minute,\n Take "+string(round(50/einstein*100)/100)+"% Damage for "+string(5*(passives[15,3]+1))+" Seconds","Every Minute,\n Take "+string(round(50/einstein*100)/100)+"% Damage for "+string(5*(passives[15,3]+1))+" Seconds","Every Minute,\n Take "+string(round(50/einstein*100)/100)+"% Damage for "+string(5*(passives[15,3]+1))+" Seconds","","","","","",""],
["+"+string(1)+" Revive\nWith "+string(clamp((1-(1-.5*einstein)/leinstein)*100,0,100))+"% Health ("+string(revives+1)+")","+"+string(1)+" Revive\nWith "+string(clamp((1-(1-.5*einstein)/leinstein)*100,0,100))+"% Health ("+string(revives+1)+")","+"+string(1)+" Revive\nWith "+string(clamp((1-(1-.5*einstein)/leinstein)*100,0,100))+"% Health ("+string(revives+1)+")","+"+string(1)+" Revive\nWith "+string(clamp((1-(1-.5*einstein)/leinstein)*100,0,100))+"% Health ("+string(revives+1)+")","","","","","","","",""],
["+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]"],
["+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","",""], //power
["OxyContin Spawns\nEvery 3 Minutes","OxyContin Spawns\nEvery 2 Min: 30 Sec","OxyContin Spawns\nEvery 2 Minutes","OxyContin Spawns\nEvery 1 Min: 30 Sec","OxyContin Spawns\nEvery 1 Minute","OxyContin Spawns\nEvery 30 Seconds","","","","","",""],
["+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)",""],
["+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)"],
["Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")"],
["+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","",""],
["+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")"],
["-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","",""]
]

eintext=["+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)","+2% Passives' Potency\n("+string((einstein-1+.02)*100)+"%)"]

if xpbuff>=xpto {
	var xpbuff_last=xpbuff
	xpbuff=0
	xp=xp-xpto
	level++
		if master.mainmenu=0 {
	

        audio_pause_sync_group(sg);
		audio_pause_all()
	instance_create_layer(room_width/2,0,"uiitop",obj_levelup)
	levelheat+=1*1000000;
	xpto=level+1
		global.pause=1
		
}


updatetext=0
if xpbuff_last != 0 {
	exit
}
}
	
	
	
	
	
	
	
	}

//update keys
if donda3=0 {
	key=0
} else {
	//F#Major/EbMinor
//key=0
//GMajor/EMinor
//key=1
//G#Major/FMinor
//key=2
//AMajor/F#Minor
//key=3
//A#Major/GMinor
//key=4
//BMajor/G#Minor
//key=5
//CMajor/AMinor
//key=6
//DbMajor/A#Minor
//key=7
//DMajor/BMinor
//key=8
//EbMajor/CMinor
//key=9
//EMajor/C#Minor
//key=10
//FMajor/DMinor
//key=11
//glory
if second=0 and minute=0 and hour=0 {
	key=0
}
//cancelled
if second=14 and minute=1 and hour=0 {
	key=8
}
if second=22 and minute=1 and hour=0 {
	key=1
}
if second=27 and minute=2 and hour=0 {
	key=8
}
//waterintodrank
if second=40 and minute=4 and hour=0 {
	key=1
}
if second=47 and minute=5 and hour=0 {
	key=0
}
if second=12 and minute=6 and hour=0 {
	key=1
}
//winterscold
if second=28 and minute=7 and hour=0 {
	key=11
}
//freeingchrist
if second=46 and minute=9 and hour=0 {
	key=8
}
//majestic
if second=59 and minute=12 and hour=0 {
	key=11
}
//ellayel
if second=9 and minute=14 and hour=0 {
	key=6
}
//heartaches808s
if second=14 and minute=16 and hour=0 {
	key=6
}
//glides to this key
if second=30 and minute=16 and hour=0 {
	key=9
}
//lucille
if second=46 and minute=18 and hour=0 {
	key=9
}
//yeealittle
if second=56 and minute=20 and hour=0 {
	key=8
}
if second=44 and minute=22 and hour=0 {
	key=3
}
//chasingghosts
if second=05 and minute=24 and hour=0 {
	key=6
}
//40years
if second=20 and minute=26 and hour=0 {
	key=8
}
if second=24 and minute=27 and hour=0 {
	key=3
}
if second=0 and minute=28 and hour=0 {
	key=8
}
//praisegod
if second=37 and minute=28 and hour=0 {
	key=5
}
if second=31 and minute=29 and hour=0 {
	key=8
}
if second=37 and minute=29 and hour=0 {
	key=3
}
if second=53 and minute=29 and hour=0 {
	key=10
}
//intheend
if second=25 and minute=30 and hour=0 {
	key=4
}
if second=44 and minute=31 and hour=0 {
	key=5
}
if second=52 and minute=31 and hour=0 {
	key=6
}
//gradually declines to this
if second=23 and minute=32 and hour=0 {
	key=3
}
if second=24 and minute=32 and hour=0 {
	key=8
}
if second=29 and minute=32 and hour=0 {
	key=2
}
if second=09 and minute=33 and hour=0 {
	key=3
}
}

//update spawntable
//0object, 
//1spawning?, 
//2size (1 normal), 
//3resistance (none,0-1,invincible), 
//4damage (1 normal),
//5speed (1 normal)
//6xp
//7rarity 1=100%, 5=20%, 10=10%, 20=5%, 100=1%
//8dolars
//9=health
//10=direction 0=left,1r,2u,3d,4dl,5ul,6ru,7rd,8random
//11=gravity?
//12: 1=onlylr,2=only ud
//13:flying
//


//if ti<=29 
//{
//	mob = [
//		[ghost,1,.75,0,1,1,1,1,1,1,0,0,0,1],
//		[stardavid,1,.6,0,1,1.5,1,3,0,1,3,0,0,1],
//		[razziA,1,1,0,1,.5,1,10,0,1,8,1,1,0],
//		[razziF,1,1,0,.7,.7,1,10,0,1,8,1,1,0]
//	];
//} 
//else {
//if ti<=59 {
//	mob = [
//		[ghost,1,.8,0,1.2,1.1,1,1,1,2,0,0],
//		[stardavid,1,.7,0,1.2,1.6,1,4,0,2,8,0],
//		[razziA,1,1,.1,1,.8,2,70,2,3,0,1],
//		[razziF,1,1,0,.7,.8,2,70,2,2,0,1]
//	];
//} else {
//if ti<=89 {
//	mob = [
//		[ghost,1,.9,0,1.2,.7,1,1,1,2,0,0],
//		[stardavid,1,.6,0,1.4,1.5,1,6,0,2,8,0],
//		[razziA,1,1,.1,.7,1,2,40,2,3,0,1],
//		[razziF,1,1,0,.7,1,2,60,2,3,0,1]
//	];
//} else {
//if ti<=119 {
//	mob = [
//		[ghost,1,.8,.3,2,1.3,1,2,0,4,0,0],
//		[stardavid,1,.7,.3,2,1.5,1,1,1,2,8,0],
//		[razziA,1,1,.3,1,.9,2,50,2,3,0,1],
//		[razziF,1,.9,.1,1.2,.8,2,50,2,3,0,1]
//	];
//} else {
//	if ti<=149 {
//	mob = [
//		[ghost,1,.8,.3,2,1.4,1,2,0,1,0,0],
//		[stardavid,1,.5,.3,1,2,1,1,1,2,8,0],
//		[razziA,1,1,.4,1.5,.8,2,30,2,3,0,1],
//		[razziF,1,1,.2,1.5,.6,2,30,2,3,0,1]
//	];
//} else {
//	if ti<=179 {
//	mob = [
//		[ghost,1,.9,.3,2,1.4,1,2,1,2,0,0],
//		[stardavid,1,.75,.3,2,2,1,15,1,2,8,0],
//		[razziA,1,1,.4,1.5,.8,2,25,3,3,0,1],
//		[razziF,1,1,.2,1.5,.6,2,25,3,3,0,1]
//	];
//} else {
//	//update spawntable
////0object, 
////1spawning?, 
////2size (1 normal), 
////3resistance (none,0-1,invincible), 
////4damage (1 normal),
////5speed (1 normal)
////6xp
////7rarity 1=100%, 5=20%, 10=10%, 20=5%, 100=1%
////8dolars
////9=health
////10=direction 0=left,1r,2u,3d,4dl,5ul,6ru,7rd,8random
//	if ti<=209 {
//	//  name      ,spawn,size  ,resist,damage,speed ,xp    ,rarity,dollar,health,direction
//	mob = [
//		[ghost    ,1    ,.9    ,.5    ,2     ,1.4   ,1     ,20     ,2     ,2    ,1,0],
//		[stardavid,1    ,.75   ,.5    ,2     ,2.5   ,1   ,3      ,1     ,2    ,8,0],
//		[razziA   ,1    ,1     ,.6    ,1.6   ,.8    ,2     ,25     ,2     ,3    ,2,1],
//		[razziF   ,1    ,1    ,.6    ,1.6   ,.6    ,2     ,25     ,2     ,3    ,3,1]
//	];
//} else {
//	if ti<=239 {
//	mob = [
//		//name    ,spawn,size  ,resist,damage,speed ,xp    ,rarity,dollar,health,direction
//		[ghost    ,1    ,.9    ,.6    ,2    ,1.4   ,1     ,20     ,2     ,3    ,0,0],
//		[stardavid,1    ,.75   ,.6    ,2.2   ,2.5   ,1     ,4      ,2     ,3    ,8,0],
//		[razziA   ,1    ,1     ,.6    ,2     ,.8    ,2     ,25     ,3     ,4    ,1,1],
//		[razziF   ,1    ,1    ,.6    ,2     ,.6    ,2     ,25     ,3     ,4    ,2,1]
//	];
//} else {
//	if ti<=269 {

//		//  name  ,spawn,size  ,resist,damage,speed ,xp    ,rarity,dollar,health,direction
//	mob = [
//		[ghost    ,1    ,1     ,.7    ,2    ,1.5   ,1     ,10     ,2     ,4    ,8,0],
//		[stardavid,1    ,.75   ,.7    ,2.2   ,2.6   ,1     ,5      ,2     ,4    ,8,0],
//		[razziA   ,1    ,1     ,.7    ,2     ,.9    ,2     ,20     ,3     ,5    ,1,1],
//		[razziF   ,1    ,1    ,.7    ,2     ,.9    ,2     ,20     ,3     ,5    ,2,1]
//	];
//} else {
//	if ti<=299 {
	
//		//  name  ,spawn,size  ,resist,damage,speed ,xp    ,rarity,dollar,health,direction
//	mob = [
//		[ghost    ,1    ,1.3     ,.75    ,3    ,1.5   ,1     ,15     ,4     ,4    ,8,0],
//		[stardavid,1    ,.75   ,.75    ,2.2   ,2.6   ,1     ,10      ,2     ,4    ,8,0],
//		[razziA   ,1    ,1     ,.75    ,2     ,1.5    ,2     ,20     ,2     ,5.5    ,8,1],
//		[stardavid   ,1    ,.4    ,.75    ,2     ,5    ,1    ,5     ,2     ,1    ,9,0]
//	];
//} else {
//	if ti<=350 {
//	//  name      ,spawn,size  ,resist,damage,speed ,xp    ,rarity,dollar,health,direction
//	mob = [
//		[ghost    ,1    ,1.4     ,.8    ,3    ,2  ,3     ,10     ,4     ,7    ,9,0],
//		[stardavid,1    ,.75   ,.8    ,2.2   ,3.5   ,1     ,1      ,2     ,4    ,8,0],
//		[blackball   ,1    ,.3     ,.5    ,1     ,2    ,1     ,20     ,1     ,2    ,9,0],
//		[blackball   ,1    ,1    ,.8    ,4     ,1    ,4     ,50     ,4     ,10    ,8,0]
//	];
//} else {
//		if ti<=400 {
	
//		//  name  ,spawn,size  ,resist,damage,speed ,xp    ,rarity,dollar,health,direction
//	mob = [
//		[ghost    ,1    ,1.3     ,.75    ,3    ,1.6   ,1     ,15     ,4     ,6    ,8,0],
//		[stardavid,1    ,.75   ,.75    ,2.2   ,2.6   ,1     ,10      ,2     ,4    ,8,0],
//		[razziA   ,1    ,1     ,.75    ,2     ,1.5    ,2     ,20     ,2     ,5.5    ,8,1],
//		[blackball   ,1    ,.5    ,.75    ,2     ,1.5    ,3     ,40     ,2     ,5.5    ,0,0]
//	];
//} else {
//	//  name      ,spawn,size  ,resist,damage,speed ,xp    ,rarity,dollar,health,direction
//	mob = [
//		[ghost    ,1    ,1.4     ,.8    ,3    ,1  ,3     ,10     ,4     ,7    ,9,0],
//		[stardavid,1    ,.75   ,.8    ,2.2   ,3.5   ,1     ,10      ,2     ,4    ,8,0],
//		[razziF   ,1    ,1     ,.85    ,4     ,2.5    ,3     ,20     ,3     ,5    ,8,1],
//		[blackball   ,1    ,.7    ,.9    ,3     ,1    ,4     ,30     ,2     ,10    ,9,0]
//	];
//}
//}
//}
//}
//}
//}
//}
//}
//}
//}
//}
//}

if selectedstage!=0 {
if hour*3600+minute*60+second >= stages[selectedstage,6] {
if instance_exists(yeancat) {
if (delta_second > 0) {
	
  delta_second -= delta_time * 1 * global.room_speed_set/60;
}
  
  if (delta_second <= 0) {
	delta_second = 1000000-(0-delta_second);
	second+=1;
	kps=killcount-killcountlast
	killcountlast=killcount
	tiprev=ti
	ti+=1
	countdi=1
	if stemplay=1 {
		if stemtime>0 {
			stemtime-=1
		} else {
			stemplay=0
		}
  }
} else {

}
}
} else {
	tiprev=ti
	if os_type=os_ios or os_type=os_android {
	ti=floor(audio_sound_get_track_position(music))
	} else {
		ti=floor(audio_sound_get_track_position(music))
		//ti=floor(audio_sync_group_get_track_pos(sg))
	}
	if tiprev!=ti {
		countdi=1
		if stemplay=1 {
		if stemtime>0 {
			stemtime-=1
		} else {
			stemplay=0
		}
	}
	}
}
} else {
	//yean timer
	if instance_exists(yeancat) {
if (delta_second > 0) {
	
  delta_second -= delta_time * 0.9905 * global.room_speed_set/60;
}
  
  if (delta_second <= 0) {
	
	second+=1;
	kps=killcount-killcountlast
	killcountlast=killcount
	tiprev=ti
	ti+=1
	countdi=1

	if stemplay=1 {
		if stemtime>0 {
			stemtime-=1
		} else {
			stemplay=0
		}
  }
  delta_second = 1000000-(0-delta_second);
} else {

}
if second>59 {
	minute+=1
	second=0
}

if minute>59 {
	hour+=1
	minute=0
}
}
}

if !instance_exists(yeancat) {
	lower+=4*(global.room_speed_set/1000000*delta_time)
	if scaleg<1 {
		scaleg+=.01
	}
}


if hour*3600+minute*60+second >= floor(stages[selectedstage,6]) {
if second>59 {
	minute+=1
	second=0
}

if minute>59 {
	hour+=1
	minute=0
}
}

var posi=0
if donda3=1 {
	if hour*3600+minute*60+second < 2013 {
		if os_type=os_ios or os_type=os_android {
			posi=ti

		} else {
posi = floor(audio_sound_get_track_position(music))
	if audio_sync_group_is_playing(sg) {
		
	 posi = floor(audio_sync_group_get_track_pos(sg))
	} else {
		posi=floor(ti)
		posi = floor(audio_sound_get_track_position(music))
	}
}
if posi != hour*3600+minute*60+second {
	var time_values = seconds_to_time(posi);
hour = time_values[2];
minute = time_values[1];
second = time_values[0];

}
} else {

	if ti != hour*3600+minute*60+second {
		tiprev=ti
		ti=hour*3600+minute*60+second
	var time_values = seconds_to_time(ti);
hour = time_values[2];
minute = time_values[1];
second = time_values[0];
}
}
}

//0ITEM ID //1planet[i] or space-1, //2playerpos/spacepos, 3//spawned? 4type? 0=n/a 1=passive 2=weapon 5:moving?
//passives are id +15
//weapons are id +41
//WORLD ITEMS
arrowright=0
arrowleft=0
for (var w=0; w<array_length(worlditems); w++) {
	if worlditems[w,1]=-1 {
		//space
	} else {
		//planet
		if obj_terrain.planet=worlditems[w,1] {
			//on planet
			//facing?
			var facep = 0
			if worlditems[w,2]> obj_terrain.playerpos {
				//right
				if worlditems[w,4]!=3 {
					arrowright=1
				} else {
						if collection[worlditems[w,0],1]=1 {
							arrowright=1
						}
					}
				facep=1
				if worlditems[w,3]=1 {
						arrowright=0
					}
					
			} else {
				if worlditems[w,2]< obj_terrain.playerpos {
					//left
					if worlditems[w,4]!=3 {
					arrowleft=1
				} else {
						if collection[worlditems[w,0],1]=1 {
							arrowright=1
						}
					}
					facep=-1
					if worlditems[w,3]=1 {
						arrowleft=0
					}
				} else {
					//on
					facep=0
				}
			}
			if worlditems[w,3]=0 {
				if instance_exists(yeancat) {
					if round(obj_terrain.playerpos/1000)*1000=worlditems[w,2] {
						//spawn right
						if facep=1  {
							ite = instance_create_layer(room_width/2+1920*master.camscale/2+300,yeancat.y+(random(1080*master.camscale)/2-1080*master.camscale/2)*(clamp(2-(yeancat.x-(room_width/2-(1920/2)*camscale))/((1920/2)*camscale),1,2)),"player",items[worlditems[w,0],0])
				
						} else {
							if facep=0 {
								//center
								//randomize
							if round(random(2))<=1 {
												ite = instance_create_layer(room_width/2+1920*master.camscale/2+300,yeancat.y+(random(1080*master.camscale)/2-1080*master.camscale/2)*(clamp(2-(yeancat.x-(room_width/2-(1920/2)*camscale))/((1920/2)*camscale),1,2)),"player",items[worlditems[w,0],0])
							} else {
										ite = instance_create_layer(room_width/2-1920*master.camscale/2-300,yeancat.y+(random(1080*master.camscale)/2-1080*master.camscale/2)*(clamp(2-(yeancat.x-(room_width/2-(1920/2)*camscale))/((1920/2)*camscale),1,2)),"player",items[worlditems[w,0],0])
							}
							} else {
								ite = instance_create_layer(room_width/2-1920*master.camscale/2-300,yeancat.y+(random(1080*master.camscale)/2-1080*master.camscale/2)*(clamp(2-(yeancat.x-(room_width/2-(1920/2)*camscale))/((1920/2)*camscale),1,2)),"player",items[worlditems[w,0],0])
						//left
							}
						}
						//set id
						if instance_exists(ite) {
							ite.space=0
							ite.planett=obj_terrain.planet
							//ite.poss=worlditems[w,2]
				ite.itemidd=worlditems[w,0]
				ite.variant=items[worlditems[w,0],5]
				if worlditems[w,4] = 1 or worlditems[w,4]=2 or worlditems[w,4]=3 {
					//weapon or passive
					//make stand still
					ite.moves=0
				}
				}
						//spawned? changer
						worlditems[w,3]=1
				}
			}
			}
		}
	}
}


time+=.01
//if devmode=0 {
mobfreq-=1 
//} else {
//	if keyboard_check(ord("E")) {
//		mobfreq-=1 
//	}
//}

foodfreq-=1
//if starfreq=round(starfreqset/2) {
//	instance_create_layer(2200,1040 * sin(time) + 540,"stars",star)
//}
if master.prescription>0 {
	if oxyfrequency> 0 {
		oxyfrequency-=delta_time;
	} else {
		oxyfrequencyset=60*3+30-(master.prescription*30)
		oxyfrequency=oxyfrequencyset*1000000
		var oxi = instance_create_layer(room_width/2+1920*master.camscale/2+300,room_height/2+(random(1080*master.camscale)-1080*master.camscale/2),"player",items[i,0])
		var vari=clamp(ceil(random_range(1,master.prescription)),1,5)
		oxi.variant=vari
		oxi.itemidd=37+vari
	}
}

if spawnthings=true {
	
	if itemfrequency>0 {
		itemfrequency-=delta_time*global.room_speed_set/60
	} else {
		
		//spawn
		var itempool = 0
	for (i=0; i<array_length(items);i++) {
		if items[i,1]=1 {
			//count enemy spawn total
			itempool+=1
		}
	}
	//abs(abs(items[i,6])-1)
		//select random number in total
		var itemroll=1+round(random(itempool-1));
		
		for (i=0; i<array_length(items);i++) {
		if items[i,1]=1 {
			itemroll-=1
			if itemroll = 0 {
								if (items[i][0] = obj_weaponitem) {
					if weapons[items[i][5],15]=1 {
			
					} else {
									itempool = 0
	for (ii=0; ii<array_length(items);ii++) {
		if items[ii,1]=1 {
			//count enemy spawn total
			itempool+=1
		}
	}
	itemroll=1+round(random(itempool-1));
					i=0
					continue
					}
				}
				if (items[i][0] = obj_passiveitem) {
					if passives[items[i][5],9]=1 {

					} else {
									itempool = 0
	for (ii=0; ii<array_length(items);ii++) {
		if items[ii,1]=1 {
			//count enemy spawn total
			itempool+=1
		}
	}
	itemroll=1+round(random(itempool-1));
					i=0
					continue
					}
				}
				if random((abs(abs(items[i,6])-1)*items[i,4]+(items[i,4]*clamp(items[i,6],0,1))+abs(clamp(items[i,6],-1,0))*items[i,4]*(master.luck))*1000)<=(1+(master.luck-1)*clamp(items[i,6]+1,0,1))*1000 {
							//stop spawning item
								if (items[i][0] = obj_weaponitem) {
					if weapons[items[i][5],15]=1 {
					items[i][1]=0;
					items[i,2]=1
					for (igg=0; igg<array_length(items); igg+=1) {
						if (items[i][0] = obj_weaponitem) {
							items[igg][4]+=100;
						}

					}
					}
					}
					if (items[i][0] = obj_passiveitem) {
					if passives[items[i][5],9]=1 {
					items[i][1]=0;
					items[i,2]=1
					for (igg=0; igg<array_length(items); igg+=1) {
						if (items[i][0] = obj_passiveitem) {
							items[igg][4]+=100;
						}

					}
					}
					}
					
					if instance_exists(yeancat) {
						//spawn item right
						if obj_terrain.travelspeed>0 {
				ite = instance_create_layer(room_width/2+1920*master.camscale/2+300,yeancat.y+(random(1080*master.camscale)-1080*master.camscale/2)*(clamp(2-(yeancat.x-(room_width/2-(1920/2)*camscale))/((1920/2)*camscale),1,2)),"player",items[i,0])
					} else {
						//spawn item left
						if obj_terrain.travelspeed<0 {
							ite = instance_create_layer(room_width/2-1920*master.camscale/2-300,yeancat.y+(random(1080*master.camscale)-1080*master.camscale/2)*(clamp(2-(yeancat.x-(room_width/2-(1920/2)*camscale))/((1920/2)*camscale),1,2)),"player",items[i,0])
						} else {
							//randomize
							if round(random(1))=0 {
												ite = instance_create_layer(room_width/2+1920*master.camscale/2+300,yeancat.y+(random(1080*master.camscale)-1080*master.camscale/2)*(clamp(2-(yeancat.x-(room_width/2-(1920/2)*camscale))/((1920/2)*camscale),1,2)),"player",items[i,0])
							} else {
										ite = instance_create_layer(room_width/2-1920*master.camscale/2-300,yeancat.y+(random(1080*master.camscale)-1080*master.camscale/2)*(clamp(2-(yeancat.x-(room_width/2-(1920/2)*camscale))/((1920/2)*camscale),1,2)),"player",items[i,0])
							}
						}
					}
					if instance_exists(ite) {
				ite.itemidd=i
				ite.variant=items[i,5]
				if ite=obj_passiveitem or ite=obj_weaponitem {
					ite.planett=obj_terrain.planet
					if obj_terrain.playeraltitude>=40000 {
						ite.space=1
					} else {
						ite.space=0
					}
					ite.moves=1
				}
				}
				} else {
				ite = instance_create_layer(room_width/2+1920*master.camscale/2+300,room_height/2+(random(1080*master.camscale)-1080*master.camscale/2),"player",items[i,0])
				}
				if instance_exists(ite) {
				ite.itemidd=i
				ite.variant=items[i,5]
				if ite=obj_passiveitem or ite=obj_weaponitem {
					ite.planett=obj_terrain.planet
					if obj_terrain.playeraltitude>=40000 {
						ite.space=1
					} else {
						ite.space=0
					}
					ite.moves=1
				}
				}
				//0object,
				//1can spawn,
				//2has spawned
				
				//(items[i][0] = obj_weaponitem) or 

				if (items[i][0] = album) or (items[i][0] = shades) {
					items[i][1]=0;
				}
				//3collected?
				//4rarity(1=100%,2=50%)
				//5variant
				//6 good=1, bad=-1; neutral=0 (for determining luck)
				
				break
				} else {
					itempool = 0
	for (ii=0; ii<array_length(items);ii++) {
		if items[ii,1]=1 {
			//count enemy spawn total
			itempool+=1
		}
	}
	itemroll=1+round(random(itempool-1));
					i=0
				}
				
			}
		}
	}
		
		
		
	if rampitem<10 {
		rampitem+=1
		itemfrequencyset+=1
	} else {
		}
		itemfrequency=itemfrequencyset*1000000/(sqrt((hour*3600+minute*60+second+2013)/2013))
	
	}

if instance_exists(yeancat) {
	if yeancat.healthh<yeancat.maxhealth {
if foodfreq<0 {
	if random(100)<foodchance {
	instance_create_layer(room_width/2+1920*master.camscale/2+300,room_height/2+(random(1080*master.camscale)-1080*master.camscale/2),"player",bigmac)
	}
	foodfreq=round((foodfreqset+random(foodfreqset/4))/(sqr((speedd+20)/30)))
}
}
}
var tablepick=0
if floor(random(clamp(abs(obj_terrain.d2plan/15),0,1)*20))+1=1 {
	//current planet
	tablepick=obj_terrain.planet
} else {
	tablepick=(obj_terrain.planet-sign(obj_terrain.d2plan)+13) % 13
}
if flying=0 {
	for (i=0; i<array_length(mob);i++) {
		if i % 2 == 0{
	if mobground[obj_terrain.planet,i/2] != -1 {
		mob[i] = mobarray[mobground[obj_terrain.planet,i/2]]
		} else {
		mob[i] = [ghost,0,.75,0,1,1,1,1,1,1,0,0,0,1]
		}
		} else {
			if mobscharacters[charselect,(i-1)/2] != -1 {
		mob[i] = mobarray[mobscharacters[charselect,(i-1)/2]]
		} else {
		mob[i] = [ghost,0,.75,0,1,1,1,1,1,1,0,0,0,1]
		}
		}
	}
} else {
	for (i=0; i<array_length(mob);i++) {
		if i % 2 == 0{
		if mobspace[tablepick,i/2] != -1 {
		mob[i] = mobarray[mobspace[tablepick,i/2]]
		} else {
		mob[i] = [ghost,0,.75,0,1,1,1,1,1,1,0,0,0,1]
		}
		} else {
			if mobscharacters[charselect,(i-1)/2] != -1 {
		mob[i] = mobarray[mobscharacters[charselect,(i-1)/2]]
		} else {
		mob[i] = [ghost,0,.75,0,1,1,1,1,1,1,0,0,0,1]
		}
		}
	}
}
//disable certain enemies
for (i=0; i<array_length(mob);i++) {
	if i>clamp((ti/1007)*10,0,11) {
		mob[i]=[ghost,0,.75,0,1,1,1,1,1,1,0,0,0,1]
	}
}
if mobfreq<0 and (spawnenemies = true) {
	repeat (1+clamp(floor((hour*3600+minute*60+second)/1007*100)*(1-clamp((instance_number(enemy)+1)/(1+((hour*3600+minute*60+second)/1007)*100),0,1)),0,1000)) {
	var enemypool = 0
	for (i=0; i<array_length(mob);i++) {
		if mob[i,1]=1 {
			//count enemy spawn total
			enemypool+=1
		}
	}
		//select random number in total
		var enemyroll=1+round(random(enemypool-1));
		if instance_exists(yeancat) {
	for (i=0; i<array_length(mob);i++) {
		if mob[i,1]=1 {
			enemyroll-=1
			
			if enemyroll = 0 {
				//10=direction 0=left,1r,2u,3d,4dl,5ul,6ru,7rd,8random
//11=gravity?
//12: 1=onlylr,2=only ud
//13:flying
var nope=0
if mob[i,13]=0 {
						if obj_terrain.player_height_fromground+obj_terrain.playeraltitude >800 {
						nope=1
						}
					}
				if random_range(0,mob[i,7])<=1 and nope=0{
					dirmov=0
					
					if mob[i,10]=8 {
						if mob[i,12]=0 {
						dirmov=round(random_range(0,7))
						} else {
							if mob[i,12]=1 {
								dirmov=round(random_range(0,1))
							}
							if mob[i,12]=2 {
								dirmov=round(random_range(2,3))
							}
						}
					} else {
						dirmov=mob[i,10]
					}
					
					
					if dirmov=9 {
						var way=choose(-1,1)
						if way=-1 {
								var xxx=clamp(room_width/2+random_range(-1920*master.camscale/2,1920*master.camscale/2),-500,room_width+500)
								var yyy=clamp(choose(-1,1)*1300*master.camscale/2+room_height/2,-500,room_height+500)
						} else {
								var yyy=clamp(room_height/2+random_range(-1080*master.camscale/2,1080*master.camscale/2),-500,room_height+500)
								var xxx=clamp(choose(-1,1)*2200*master.camscale/2+room_width/2,-500,room_width+500)
						}
						var enem = instance_create_layer(xxx,yyy,"enemylayer",mob[i,0])
					}
					if dirmov=0  or dirmov=4{
						var yte=room_height*2/4
						yte =(room_height/2+random_range(-1080*master.camscale,1080*master.camscale))*(clamp(1-((room_width/2+1920*master.camscale/2)-yeancat.x)/(1920*master.camscale),0,1))+(yeancat.y*(clamp(((room_width/2+1920*master.camscale/2)-yeancat.x)/(1920*master.camscale),0,1)))
						if mob[i,13]=0 {
							yte=room_height*3/4
						}
					if instance_exists(yeancat) {	
						//(1080*master.camscale/2)*(clamp(1-(yeancat.x-(room_width/2-(1920*master.camscale/2)))/1920,.2,1))
			var enem = instance_create_layer(room_width/2+400+1920*master.camscale/2,yte,"enemylayer",mob[i,0])
					} else {
						var enem = instance_create_layer(room_width/2+400+1920*master.camscale/2,yte,"enemylayer",mob[i,0])
			}
					}
					if dirmov=1 or dirmov=6 {
					if instance_exists(yeancat) {
						 yte=room_height*2/4
						var yte =(room_height/2+random_range(-1080*master.camscale,1080*master.camscale))*(clamp(1-((room_width/2+1920*master.camscale/2)-yeancat.x)/(1920*master.camscale),0,1))+(yeancat.y*(clamp(((room_width/2+1920*master.camscale/2)-yeancat.x)/(1920*master.camscale),0,1)))
						if mob[i,13]=0 {
							yte=room_height*3/4
						}
						//(1080*master.camscale/2)*(clamp(1-(yeancat.x-(room_width/2-(1920*master.camscale/2)))/1920,.2,1))
			var enem = instance_create_layer(room_width/2-400-1920*master.camscale/2,yte,"enemylayer",mob[i,0])
					} else {
						var enem = instance_create_layer(room_width/2-400-1920*master.camscale/2,yte,"enemylayer",mob[i,0])
			}
					}
					if dirmov=2  or dirmov=5{
					if instance_exists(yeancat) {	
						//(1080*master.camscale/2)*(clamp(1-(yeancat.x-(room_width/2-(1920*master.camscale/2)))/1920,.2,1))
			var enem = instance_create_layer((room_width/2+random_range(-1920*master.camscale,1920*master.camscale))*(clamp(((room_height/2+1080*master.camscale/2)-yeancat.y)/(1080*master.camscale),0,1))+(yeancat.x*(1-clamp(((room_height/2+1080*master.camscale/2)-yeancat.y)/(1080*master.camscale),0,1))),room_height/2+300+900*master.camscale/2,"enemylayer",mob[i,0])
					} else {
						var enem = instance_create_layer((room_width/2+random_range(-1920*master.camscale,1920*master.camscale))*(clamp(((room_height/2+1080*master.camscale/2)-room_height/2)/(1080*master.camscale),0,1))+(room_width/2*(1-clamp(((room_height/2+108*master.camscale/2)-room_height/2)/(1080*master.camscale),0,1))),room_height/2+300+900*master.camscale/2,"enemylayer",mob[i,0])
			}
					}
					if dirmov=3  or dirmov=7{
					if instance_exists(yeancat) {	
						//(1080*master.camscale/2)*(clamp(1-(yeancat.x-(room_width/2-(1920*master.camscale/2)))/1920,.2,1))
			var enem = instance_create_layer((room_width/2+random_range(-1920*master.camscale,1920*master.camscale))*(clamp(1-((room_height/2+1080*master.camscale/2)-yeancat.y)/(1080*master.camscale),0,1))+(yeancat.x*(clamp(((room_height/2+1080*master.camscale/2)-yeancat.y)/(1080*master.camscale),0,1))),room_height/2-300-900*master.camscale/2,"enemylayer",mob[i,0])
					} else {
						var enem = instance_create_layer((room_width/2+random_range(-1920*master.camscale,1920*master.camscale))*(clamp(1-((room_height/2+1080*master.camscale/2)-(room_height/2))/(1080*master.camscale),0,1))+((room_width/2)*(clamp(((room_height/2+1080*master.camscale/2)-room_height/2)/(1080*master.camscale),0,1))),room_height/2-300-900*master.camscale/2,"enemylayer",mob[i,0])
			}
					}
					
				//0object, 1spawning?, 2size (1 normal), 3resistance (none,0-1,invincible), 4damage (1 normal),5speed (1 normal)
				enem.movetype=dirmov
				enem.spd=(mob[i,5]*curse*(level+500)/500)*(.75+clamp(ti/2014,0,2))
				enem.damage=mob[i,4]*master.curse*(lookingfortrouble+1)
				enem.resistance=(1-(1-mob[i,3])/curse)/(1+(level-1)/500)/(lookingfortrouble+1)+(1*lookingfortrouble)/2
				enem.sizee=mob[i,2]*(lookingfortrouble+3)/3
				enem.xp=mob[i,6]
				enem.dollar=(mob[i,8]*(level+500)/500)*(lookingfortrouble+2)/2
				enem.healthh=(mob[i,9]*curse*(level+200)/200)*(lookingfortrouble+1)*(1+ti/1007)
				if dirmov!=0 {
	dirmovs=dirmov
}
				break
				} else {
					enemyroll=1+round(random(enemypool-1));
					i=0
				}
			}
		}
	}
	//if random(2) <1 {
	//instance_create_layer(room_width/2+1920*master.camscale/2+300,random(room_height+300)-150,"player",ghost)
	//} else {
	//	instance_create_layer(room_width/2+1920*master.camscale/2+300,random(room_height+300)-150,"player",stardavid)
	//}

	}
	mobfreq=clamp(round((((mobfreqset+random(mobfreqset/4))/((clamp(speedd,0,50)+5)/15))/curse)*((instance_number(enemy)+1)/((clamp((hour*3600+minute*60+second)/2014,0,1)*1000+(master.speedd+5)/100)*master.curse))),1,999999999)
}
}
if window_get_fullscreen()=false {
	fullscreen=0
} else {
	fullscreen=1
}
if fullscreen=0 {
	if window_get_fullscreen()=true {
		window_set_fullscreen(false)
	}	
} else {
	if window_get_fullscreen()=false {
		window_set_fullscreen(true)
	}
}


if second=0 and minute % 3 = 0  and minute != 0 {
	if spawnitem=0 {
		if instance_exists(yeancat) {
		if yeancat.shade<1 {
		instance_create_layer(room_width/2+1920*master.camscale/2+300,room_height/2+((random(1080*master.camscale)-1080*master.camscale/2))*.5,"player",shades)
		}
		}
		spawnitem=1
	}
} else {
	if second=1 and minute % 3 = 0 {
		spawnitem=0
	}
}
if second > 10 or minute>0 or hour>0 {
	if round(random(10000))<5{
		//if instance_exists(yeancat) {
		//if !instance_exists(defcon) and yeancat.def=0 {
		//instance_create_layer(room_width/2+1920*master.camscale/2+300,room_height/2+((random(1080*master.camscale)-1080*master.camscale/2))*.75,"player",defcon)
		//}
		//}
	}
	if minute > 0 {
		//stemplayer commented code check this later
	//if round(random(10000))<3{
	//	if instance_exists(yeancat) {
	//	if !instance_exists(stemplayer) and master.stemplay=0 {
	//	instance_create_layer(room_width/2+1920*master.camscale/2+300,room_height/2+((random(1080*master.camscale)-1080*master.camscale/2))*.75,"player",stemplayer)
	//	}
	//	}
	//}
	}
}

}
if characters[charselect,0]=1 {
musicintro=character_music[charselect,0]
musicloop=character_music[charselect,1]
}

//music
//if stems_loaded=true {
if startmusic=0 {
if donda3=0 {
	if instance_exists(obj_jayarnoldlogo) {
	if loading<=0 {
	if !audio_is_playing(music) {
	music = audio_play_sound_on(music_emitter,musicintro,0,0,.7*master.musicvol*master.mastervol)
	}
	startmusic=1
	}
	} else {
		if !audio_is_playing(music) {
	music = audio_play_sound_on(music_emitter,musicintro,0,0,.7*master.musicvol*master.mastervol)
	}
	startmusic=1
	}
} else {
	audio_stop_all()
	music = audio_play_sound_on(music_emitter,track1,0,0,musicvol*mastervol);
audio_play_in_sync_group(sg, sound1);
audio_play_in_sync_group(sg, sound2);
audio_play_in_sync_group(sg, sound3);
audio_play_in_sync_group(sg, sound4);
audio_sound_gain(sound1, 0, 0);
//audio_sound_gain(music, 0, 0);
audio_sound_gain(sound2, 0, 0);
audio_sound_gain(sound3, 0, 0);
audio_sound_gain(sound4, 0, 0);
audio_start_sync_group(sg);
	startmusic=1
	track=2

}
} else {
	if instance_exists(obj_jayarnoldlogo) {
audio_sound_gain(music, (1-loading)*mastervol*musicvol, 0);
	}
if donda3=0 {
	loop=0 //last adjustment
if !audio_is_playing(music)  {
	music = audio_play_sound_on(music_emitter,musicloop,0,0,.7*master.musicvol*master.mastervol);
	//loop=1
}
} else {
	if !audio_is_playing(music) {
	if track=1 {
music = audio_play_sound_on(music_emitter,track1,0,0);

// Play the sounds
audio_play_in_sync_group(sg, sound1);
audio_play_in_sync_group(sg, sound2);
audio_play_in_sync_group(sg, sound3);
audio_play_in_sync_group(sg, sound4);
audio_sound_gain(sound1, 0, 0);
audio_sound_gain(sound2, 0, 0);
audio_sound_gain(sound3, 0, 0);
audio_sound_gain(sound4, 0, 0);
audio_start_sync_group(sg);
		track+=1
		exit
		}
	if track=2 {
		music = audio_play_sound_on(music_emitter,cancelled,0,0);
		track+=1
		exit
	}
	if track=3 {
		music = audio_play_sound_on(music_emitter,waterintodrank,0,0);
		track+=1
		exit
	}
	if track=4 {
		music = audio_play_sound_on(music_emitter,winterscold,0,0);
		track+=1
		exit
	}
	if track=5 {
		music = audio_play_sound_on(music_emitter,freeingchrist,0,0);
		track+=1
		exit
	}
	if track=6 {
		music = audio_play_sound_on(music_emitter,majestic,0,0);
		track+=1
		exit
	}
	if track=7 {
		music = audio_play_sound_on(music_emitter,ellayel,0,0);
		track+=1
		exit
	}
	if track=8 {
		music = audio_play_sound_on(music_emitter,heartache,0,0);
		track+=1
		exit
	}
	if track=9 {
		music = audio_play_sound_on(music_emitter,lucille,0,0);
		track+=1
		exit
	}
	if track=10 {
		music = audio_play_sound_on(music_emitter,yeealittle,0,0);
		track+=1
		exit
	}
	if track=11 {
		music = audio_play_sound_on(music_emitter,chasingghosts,0,0);
		track+=1
		exit
	}
	if track=12 {
		music = audio_play_sound_on(music_emitter,fourtyyears,0,0);
		track+=1
		exit
	}
	if track=13 {
		music = audio_play_sound_on(music_emitter,praisegod,0,0);
		track+=1
		exit
	}
	if track=14 {
		music = audio_play_sound_on(music_emitter,intheend,0,0);
		track=1
		exit
	}
}
}
}

speedd=10+10*(hour*3600+minute*60+second)/2014

if master.spawnthings=1 {
	if master_cutoff>round(obj_terrain.playeraltitude/4+1000+master.aspeedshow*4) {
		master_cutoff=(master_cutoff*99+obj_terrain.playeraltitude/4+1000+master.aspeedshow*4)/100
	} else {
		master_cutoff=(obj_terrain.playeraltitude/4+1000+master.aspeedshow*4)
	}
	//if master_highpass<round(clamp(200-obj_terrain.playeraltitude/100+sqrt(clamp(master.aspeedshow-100,0,20000))*250,0,20000)) {
		master_highpass=(clamp((master_highpass*49+(300-obj_terrain.playeraltitude/100+sqrt(clamp((master.aspeedshow-100),0,20000))*100))/50,0,48000))
	//}
} else {
	master_cutoff=((master_cutoff*99+48000)/100)
	master_highpass=((master_highpass*99)/100)
	
}
master_reverb=clamp(master.aspeedshow/1000-.5,0,1)

//master effects
// Low-pass effect


_lp_effect.cutoff = master_cutoff;
_hp_effect.cutoff = master_highpass;
_reverb.mix = master_reverb;

//music_bus.effects[2] = _reverb;

if key=0 {
	keypitch=1
}
if key<=5 and key != 0 {
	keypitch=1*power(1.059463,key)
} else {
	keypitch=1*power(1.059463,-12+key)
}

if audio_is_playing(soundscream) {
audio_sound_pitch(soundscream,1*(1-master.lower/1000)*global.room_speed_set/60)
if instance_exists(yeancat) {
	if yeancat.def<=0 {
		audio_stop_sound(soundscream);
	}
}
}
//add pitching for boss p
if instance_exists(obj_boss) {
	if obj_boss.bossid = 14 {
		if !audio_is_playing(bossmusic) {
			audio_stop_sound(music)
			
		}
		if bossp<1.4 {
			bossp+=.0005
		}
		}  else {
			if bossp>1 {
			bossp-=.01
			}
	}
} else {
	if bossp>1 {
			bossp-=.01
		}
}

//pitching
// Master Step Event
if (audio_is_playing(music)) {
    if (donda3 == 0) {
        var adjusted_bpm = global.target_bpm * (1 - lower / 1000) * global.room_speed_set / 60;
        global.target_bpm = adjusted_bpm;  // Update target BPM based on game logic
        adjust_pitch(get_delta_time());  // Adjust pitch based on delta time
        audio_sound_pitch(bossmusic, adjusted_bpm * bossp);  // Adjust boss music pitch
    } else {
        if (ti < 2013) {
            audio_sound_pitch(music, 1 * (1 - lower / 1000));
        } else {
            audio_sound_pitch(music, (ti / 2013) * (1 - lower / 1000) * global.room_speed_set / 60);
        }
    }
}

//}

//always on
if record=1 {
	stemplay=1
	stemtime=100
	
}
		if !instance_exists(obj_pausemenu) and !instance_exists(restar) {
			
		if dolcen>0 {
		dolcen=(dolcen*30)/31
		} else {
			dolcen=0
		}
		if dollarfade>.25{
		dollarfade-=.005*global.room_speed_set/60
		} else {
			dollarfade=.25
		}
		}
} else {
	//menu code
	if mainmenu=1 {
		if !instance_exists(obj_upgrademenu) {
				if dollarfade<1{
		dollarfade+=.005*global.room_speed_set/60
		} else {
			dollarfade=1
		}
		if dolcen<display_get_gui_width()*7/16 {
		dolcen=(dolcen*30+display_get_gui_width()*7/16)/31
		} else {
			dolcen=display_get_gui_width()*7/16
		}
		} else {
			if obj_upgrademenu.onscreen=0 {
				if dolcen<display_get_gui_width()*7/16 {
		dolcen=(dolcen*30+display_get_gui_width()*7/16)/31
		} else {
			dolcen=display_get_gui_width()*7/16
		}
			} else {
		if dolcen>0 {
		dolcen=(dolcen*30)/31
		} else {
			dolcen=0
		}
			}
	}
	} else {
		if dolcen>0 {
		dolcen=(dolcen*30)/31
		} else {
			dolcen=0
		}
	}
if !audio_is_playing(music) {
	if startmusic=0 {
	
	music = audio_play_sound_on(music_emitter,musicintro,0,0,.7*master.musicvol*master.mastervol)
	startmusic=1
	
} else {
if loop=0 {
	music = audio_play_sound_on(music_emitter,musicloop,0,0,.7*master.musicvol*master.mastervol);
	if tutorial=2 {
	
	
				audio_play_sound(imnotsupposedtohave,0,0)
				tutorial=3
			}
	loop=1
}
}
}
if instance_exists(obj_levelselect) {
charselect=obj_levelselect.charselect
}



if charselect!=charselectlast and characters[charselect,0]=1 {
	if obj_levelselect.stageid=0 {
	if audio_is_playing(music) {
	trackposition= audio_sound_get_track_position(music)
	audio_stop_sound(music)
	
	if loop=0 {
		music=audio_play_sound_on(music_emitter,character_music[charselect,0],0,0,.7*master.musicvol*master.mastervol)
		audio_sound_set_track_position(music,trackposition)
		startmusic=1
		loop=0
	} else {
		startmusic=1
		music=audio_play_sound_on(music_emitter,character_music[charselect,1],0,0,.7*master.musicvol*master.mastervol)
		audio_sound_set_track_position(music,trackposition)
		if tutorial=2 {
				audio_play_sound(imnotsupposedtohave,0,0)
				tutorial=3
			}
		loop=1
	}
	} else {
		if loop=1 {
		startmusic=1
		music=audio_play_sound_on(music_emitter,musicloop,0,0,.7*master.musicvol*master.mastervol)
		if tutorial=2 {
				audio_play_sound(imnotsupposedtohave,0,0)
				tutorial=3
			}
		}
	}
	}
}
//change music when cycling at top
if instance_exists(obj_levelselect) {
	
	if obj_levelselect.stageid=1 {
		if startmusic=1 {
		if audio_is_playing(music) {
		audio_stop_sound(music)
		startmusic=0
		loop=0
		}
		if !audio_is_playing(music) {
		music = audio_play_sound(glory,0,0)
		}
	}
	
}
	if obj_levelselect.stageid=0 {
		if startmusic=0 {
			audio_stop_sound(music)
			music = audio_play_sound_on(music_emitter,musicloop,1,0,.7*master.musicvol*master.mastervol)
			//make play ive never played som
			if tutorial=2 {
				audio_play_sound(imnotsupposedtohave,1,0)
				tutorial=3
			}
			loop=1
		}	
		startmusic=1
		}
	} else {
	//	if startmusic=0 {
			if !instance_exists(obj_jayarnoldlogo) {
			if !audio_is_playing(music) {
			music = audio_play_sound_on(music_emitter,musicloop,1,0,.7*master.musicvol*master.mastervol)
			if instance_exists(obj_boss) {
				if obj_boss.bossid=14 {
				bossmusic=audio_play_sound(ceasedub,1,0)
				}
			}	
			//make play ive never played som
			if tutorial=2 {
				audio_play_sound(imnotsupposedtohave,1,0)
				tutorial=3
			}
			loop=1
		
			//}
			}
	}
	}
	
}



//WEAPONS 
//DEM1 = ID;
//0name, 
//1 type, 0=base, 1=evolution, 2=superevo, 3=fusion
//2obtained?, 
//3discovered?, 
//4level, 
//5max level, 
//6passive requirement1, -1 = none
//7passive requirement2, -1 = none 
//8weapon requirement1, -1 = none
//9weapon requirement 2 -1 = none,
//10require max passives? 0 or 1
//11image, 
//12description
//13unlocked? (found in randomizer)

osc+=.05

if checkwep=1  and instance_exists(yeancat) {
	
//spawnweapons
for (i=0; i<array_length(weapons); i++) {
	//nerdblaster
		if i=0 {
			
		if weapons[i,2]=1 {
			if !instance_exists(obj_nerdblaster) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_nerdblaster)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-2
				}
			}
		}
	}
	//cellphone
	if i=2 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_cellphone) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_cellphone)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//gospel choir
	if i=4 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_gospelchoir) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_gospelchoir)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//808 Drum 6
	if i=6 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_808drum) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_808drum)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//chains 8
	if i=8 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_chains) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_chains)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//holywater 10
	if i=10 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_holywater) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_holywater)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//chakra 13
	if i=13 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_chakra) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_chakra)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//thestorm 15
	if i=15 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_thestorm) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_thestorm)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//pisces 17
	if i=17 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_pisces) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_pisces)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//moon 18
	if i=18 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_moon) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_moon)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//m1911 19
	if i=19 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_m1911) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_m1911)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//st pablo shield 21
	if i=21 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_stpabloshield) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_stpabloshield)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//st pablo sword 22
	if i=22 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_stpablosword) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_stpablosword)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//fire 23
	if i=23 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_fire) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_fire)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//gemini 25
	if i=25 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_gemini) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_gemini)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//wolf 27
	if i=27 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_wolf) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_wolf)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//flashing lights 29
	if i=29 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_flashinglights) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_flashinglights)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
	//fantasy 32
	if i=32 {
		if weapons[i,2]=1 {
			if !instance_exists(obj_fantasy) {
				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_fantasy)
				weapp.wid=i
				var itemiddd=i+40
				if master.collection[itemiddd,1]<2 {
					master.collection[itemiddd,1]=2
					master.collection[itemiddd,7]=-1
				}
			}
		}
	}
}

checkwep=0

}

//PASSIVES
//DEM1 = ID;
//0name, 
//1obtained?, 
//2discovered?, 
//3level, 
//4max level, 
//5image, 
//6description
//7unlocked? (found in randomizer)

//upgrades=[
//[clamp(master.notice[0,1]-1,0,1),master.notice[0,2],master.notice[0,3],master.passives[0,5],"+"+string(5*leinstein)+"% Luck\n("+string(((master.lluck+.05*leinstein)*(master.luck*einstein)-1)*100)+"%)",0,1,"Luck",master.notice[0,0]],
//[clamp(master.notice[1,1]-1,0,1),master.notice[1,2],master.notice[1,3],master.passives[1,5],"+"+string(5*leinstein)+"% Chance to Dodge Attacks\n("+string(((1-master.lchampion)*(.05*(master.passives[1,3]+1))*einstein*master.luck)*100)+"%)",1,1,"Champion",master.notice[1,0]],
//[clamp(master.notice[2,1]-1,0,1),master.notice[2,2],master.notice[2,3],master.passives[2,5],"+"+string(5*leinstein)+"% Enemy Health, Quantity, & Speed\n("+string((master.lcurse+1)*(.05*(master.passives[2,3]+1))*einstein*100)+"%)",2,1,"Curse",master.notice[2,0]],
//[clamp(master.notice[3,1]-1,0,1),master.notice[3,2],master.notice[3,3],master.passives[3,5],"Deal +"+string(20*leinstein)+"% Damage\nWhen below half Health\n("+string(20+10*(master.passives[3,3]))+"%)",3,0,master.passives[0,3],master.notice[3,0]],
//[clamp(master.notice[4,1]-1,0,1),master.notice[4,2],master.notice[4,3],master.passives[4,5],"+"+string(5*leinstein)+"% Damage Resistance\n("+string((1-((1-(.05*(master.passives[4,3]+1)*einstein))/master.lresist))*100)+"%)",4,1,master.passives[4,0],master.notice[4,0]],
//[clamp(master.notice[5,1]-1,0,1),master.notice[5,2],master.notice[5,3],master.passives[5,5],"Heal "+string(2*leinstein)+"% of Damage Dealt\n("+string((0+(.02*(master.passives[6,3]+1))*einstein)*100)+"%)",5,1,master.passives[5,0],master.notice[5,0]],
//[clamp(master.notice[6,1]-1,0,1),master.notice[6,2],master.notice[6,3],master.passives[6,5],"+"+string(10*leinstein)+"% Weapon & Ability Range\n("+string((master.range-1+.10*einstein)*100)+"%)",6,1,master.passives[6,0],master.notice[6,0]],
//[clamp(master.notice[7,1]-1,0,1),master.notice[7,2],master.notice[7,3],master.passives[7,5],"+"+string(5*leinstein)+"% Movement\nSpeed & Handling\n("+string(((master.lfreewill+1)/2*leinstein+(.05*(master.passives[7,3]))*einstein/2)*100)+")",7,1,master.passives[7,0],master.notice[7,0]],
//[clamp(master.notice[8,1]-1,0,1),master.notice[8,2],master.notice[8,3],master.passives[8,5],"+"+string(5*leinstein)+"% XP\n("+string((master.lgraduate*(.05*(master.passives[8,3]+1))*einstein)*100)+"%)",8,1,master.passives[8,0],master.notice[8,0]],
//[clamp(master.notice[9,1]-1,0,1),master.notice[9,2],master.notice[9,3],master.passives[9,5],"Heal "+string(1*leinstein)+" Health\nEvery "+string(master.heartseconds)+" Seconds",9,1,master.passives[9,0],master.notice[9,0]],
//[clamp(master.notice[10,1]-1,0,1),master.notice[10,2],master.notice[10,3],master.passives[10,5],"+"+string(5*leinstein*master.damage)+"% Retalitory Damage\n("+string((master.heartbreak+.05*einstein*master.damage)*100)+"%)",10,1,master.passives[10,0],master.notice[10,0]],
//[clamp(master.notice[11,1]-1,0,1),master.notice[11,2],master.notice[11,3],master.passives[11,5],"+"+string(10*leinstein*master.range)+"% Attractor Pickup Range\n("+string((master.lattract*(1+(.1*(master.passives[11,3]+1))*master.range*einstein)-1)*100)+"%)",11,1,master.passives[11,0],master.notice[11,0]],
//[clamp(master.notice[12,1]-1,0,1),master.notice[12,2],master.notice[12,3],master.passives[12,5],"+"+string(10*leinstein)+"% Attack Rate\n("+string((master.attackrate-1+.10*einstein)*100)+"%)",12,1,master.passives[12,0],master.notice[12,0]],
//[clamp(master.notice[13,1]-1,0,1),master.notice[13,2],master.notice[13,3],master.passives[13,5],"+"+string(10*leinstein)+"% Attack Duration\n("+string((master.duration-1+.10*einstein)*100)+"%)",13,1,master.passives[13,0],master.notice[13,0]],
//[clamp(master.notice[14,1]-1,0,1),master.notice[14,2],master.notice[14,3],master.passives[14,5],"+"+string(round(5*leinstein))+" Max Health\n("+string(round(10+master.love+5*einstein))+"HP)",14,1,master.passives[14,0],master.notice[14,0]],
//[clamp(master.notice[15,1]-1,0,1),master.notice[15,2],master.notice[15,3],master.passives[15,5],"Every Minute,\n Take "+string(round(50/leinstein*100)/100)+"% Damage for "+string(5*(master.passives[15,3]+1))+" Seconds)",15,0,master.passives[15,0],master.notice[15,0]],
//[clamp(master.notice[16,1]-1,0,1),master.notice[16,2],master.notice[16,3],master.passives[16,5],"+"+string(1)+" Revive\nWith "+string(clamp(50*leinstein,0,100))+"% Health",16,1,master.passives[16,0],master.notice[16,0]],
//[clamp(master.notice[17,1]-1,0,1),master.notice[17,2],master.notice[17,3],master.passives[17,5],"+"+string(2*leinstein)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((master.criticalchance+.02*einstein)*100)+"%]",17,1,master.passives[17,0],master.notice[17,0]],
//[clamp(master.notice[18,1]-1,0,1),master.notice[18,2],master.notice[18,3],master.passives[18,5],"+"+string(10*leinstein)+"% Damage\n("+string(master.ldamage*((.1*(master.passives[18,3]+1))*einstein)*100)+"%)",18,1,master.passives[18,0],master.notice[18,0]],
//[clamp(master.notice[19,1]-1,0,1),master.notice[19,2],master.notice[19,3],master.passives[19,5],"OxyContin Spawns\nEvery 3 Minutes","OxyContin Spawns\nEvery 2 Min: 30 Sec",19,0,master.passives[19,0],master.notice[19,0]],
//[clamp(master.notice[20,1]-1,0,1),master.notice[20,2],master.notice[20,3],master.passives[20,5],"+"+string(10*leinstein)+"% Projectile Size\n("+string((master.projectilesize-1+.10*einstein)*100)+"%)",20,1,master.passives[20,0],master.notice[20,0]],
//[clamp(master.notice[21,1]-1,0,1),master.notice[21,2],master.notice[21,3],master.passives[21,5],"+"+string(5*leinstein)+"% Money Value & Frequency\n("+string((((master.lwealth+.05*leinstein))*(1+.05*(master.passives[21,3]))*einstein-1)*100)+"%)",21,1,master.passives[21,0],master.notice[21,0]],
//[clamp(master.notice[22,1]-1,0,1),master.notice[22,2],master.notice[22,3],master.passives[22,5],"Item Pickups:\n+"+string(5*leinstein)+"% Duration & Effect ("+string(((master.passives[22,3]+1)*.05*einstein)*100)+"%)",22,1,master.passives[22,0],master.notice[22,0]],
//[clamp(master.notice[23,1]-1,0,1),master.notice[23,2],master.notice[23,3],master.passives[23,5],"+"+string(10*leinstein)+"% Projectile Speed\n("+string((master.projectilespeed-1+.10*einstein)*100)+"%)",23,1,master.passives[23,0],master.notice[23,0]],
//[clamp(master.notice[24,1]-1,0,1),master.notice[24,2],master.notice[24,3],master.passives[24,5],"+"+string(floor(1*leinstein))+" Projectile Amount\n(+"+string((floor(master.passives[25,3]+1)*einstein))+")",24,1,master.passives[24,0],master.notice[24,0]],
//[clamp(master.notice[25,1]-1,0,1),master.notice[25,2],master.notice[25,3],master.passives[25,5],"-"+string((((1-(.05*(master.passives[25,3])*einstein))/(master.lvanish)))*100-(((1-(.05*(master.passives[25,3])*einstein))/(master.lvanish+.05*leinstein)))*100)+"% Enemy Eyesight\n("+string((((1-(.05*(master.passives[25,3])*einstein))/(master.lvanish+.05)))*100)+"%)",25,1,master.passives[25,0],master.notice[25,0]],
//[clamp(master.notice[26,1]-1,0,1),master.notice[26,2],master.notice[26,3],master.passives[26,5],"+2% Passives' Potency\n("+string((leinstein-1+.02)*100)+"%)",26,1,master.passives[26,0],master.notice[26,0]]
//]
if audio_is_playing(music) {
trackposition= audio_sound_get_track_position(music)
}

if updatestats=1 {
	for (i=0 ; i< array_length(weapons) ;i++) {
		if weapons[i,13]=0 and weapons[i,1]=0 {
	if weapons[i,4] >= weapons[i,5] {
				var starw = 0
				for (ii=0 ; ii< array_length(collection) ;ii++) {
					if collection[ii,15]=1 {
						starw=ii
						break
					}
				}
						var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=5
						//set to complete
						noti.namee=master.collection[starw+i,0]
						noti.desc="Weapon Maxed!"
						noti.namee2="New Weapon Unlocked"
						noti.desc2=master.collectiontext[starw+i,2]
						var itemiddd=i+40
						if master.collection[starw+i,1]<2 {
							master.collection[starw+i,1]=2
							master.collection[starw+i,7]=-2
						}
						noti.reward=1
						noti.image=master.collection[starw+i,8]
						noti.imageind=master.collection[starw+i,11]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.clickable=1
						noti.relativeid=i
				weapons[i,13]=1
			}
		}
	}
	//}
	for (i=0 ; i< array_length(passives) ;i++) {
		if notice[i,0] < 1 {
			if passives[i,1] > 0 {
				notice[i,0] = 1 
			}
		}
		//if passives[i,7]=0 {
		if notice[i,1] < 1 {
		if passives[i,3] >= passives[i,4] {		
				var starp = 0
				for (ii=0 ; ii< array_length(collection) ;ii++) {
					if collection[ii,15]=2 {
						starp=ii
						break
					}
				}
						var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=5
						//set to complete
						
						noti.reward=2
						noti.namee="Ability Maxed!"
						noti.desc="New Upgrade Available!"
						noti.namee2=master.collection[starp+i,0]
						noti.desc2=master.collectiontext[starp+i,2]
						//master.collection[starp+i,0]+" Unlocked"
						noti.image=master.collection[starp+i,8]
						noti.imageind=master.collection[starp+i,11]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.clickable=1
						noti.relativeid=i
				notice[i,1] = 1
				//passives[i,7] = 1
				}
			}
		//}
		//} //else {
			//passives[i,7] = 1
		//}
		
	}
	
	
	
	leinstein=1+.02*master.notice[26,2]
	lluck=1+.05*master.notice[0,2]*leinstein
	lchampion=.02*master.notice[1,2]*leinstein*lluck
	lcurse=.05*master.notice[2,2]*leinstein
	lresist=1+.05*master.notice[4,2]*leinstein
	lfaith=.02*master.notice[5,2]*leinstein
	lrange=1+.1*master.notice[6,2]*leinstein
	lfreewill=.05*master.notice[7,2]*leinstein
	lgraduate=1+.05*master.notice[8,2]*leinstein
	lheart=.5+.5*master.notice[9,2]*leinstein

	
	lheartbreak=.02*master.notice[10,2]*leinstein
	lattract=.05*master.notice[11,2]*leinstein
	lrate=1+.05*master.notice[12,2]*leinstein
	lduration=1+.05*master.notice[13,2]*leinstein
	llove=5*master.notice[14,2]*leinstein
	lrevives=1*master.notice[16,2]
	lcrit=(1+.02*master.notice[17,2]*leinstein)*lluck
	ldamage=1+.1*master.notice[18,2]*leinstein
	lsize=1+(.1*power(clamp(master.notice[20,2],0,99999),.70))*leinstein
	lwealth=1+.05*master.notice[21,2]*leinstein
	lwisdom=.05*master.notice[22,2]*leinstein
	lspeed=1+.1*master.notice[23,2]*leinstein
	lclone=1*master.notice[24,2]
	lvanish=1+.05*master.notice[25,2]*leinstein
	
	
	
	
	if passives[26,3] > 0 {
	einstein=1+(.02*passives[26,3]);
	}
	if instance_exists(obj_upgrademenu) {
		obj_upgrademenu.einstein=einstein
		obj_upgrademenu.leinstein=leinstein
	}
	
	damage=ldamage*(1+(.1*passives[18,3])*einstein); //power
	luck=lluck*(1+(.05*passives[0,3])*einstein); //bound2fortune
	attackrate=lrate*(1+(.1*passives[12,3])*einstein);
	range=lrange*(1+(.1*passives[6,3])*einstein);//fame area of effect
	projectilespeed=lspeed*(1+(.1*passives[23,3])*einstein); //wonder
	projectilesize=lsize*(1+(.1*power(clamp(passives[20,3],0,99999),.70))*einstein);//spectacle
	criticalchance=(1-(1/(1+(.02*passives[17,3]*luck*einstein)*(lcrit)))); //monster
	//criticalamount=(2+.5*lcamount)*einstein;

	criticalamount=(2*(.95+.05*clamp(master.passives[17,3],1,99999)))*einstein*((.95+.05*(clamp(master.notice[17,2],1,99999))*leinstein))
	duration=lduration*(1+(.1*passives[13,3])*einstein);//longevity

	attraction=lattract+(1+(.05*(passives[11,3]))*range*einstein);
	magnet=175*attraction
	pickuppotency=(1+lwisdom)*(1+(.05*passives[22,3])*einstein); //wisdom
	mercy=(passives[15,3]); //half damage
	resistance=1-((1-(.05*passives[4,3]*einstein))/lresist);//0none 1=invincible
	curse=(lcurse+1)*(1+.05*passives[2,3]*einstein)
	freewill=lfreewill+(.05*passives[7,3])*einstein
	faith=lfaith+(.02*passives[6,3])*einstein; //heal damage dealt
	love=0; //max health
	if passives[14,3]<5 {
		love=round((5*passives[14,3])*einstein)+llove
	} else {
		love=round((20+10*(passives[14,3]-4))*einstein)+llove
	}
	if instance_exists(yeancat) {
		yeancat.maxhealth=10+love
	} 
	//+string(floor((clamp(master.passives[9,3],0,1)+clamp(master.passives[9,3]-4,0,10000)+clamp(master.notice[9,2],0,1))*einstein+(.5*master.notice[9,2]*leinstein)))+" HP\nEvery "+string((5-clamp(master.passives[9,3],0,4))/(1+.05*master.notice[9,2]*leinstein))+" Seconds+\n("+string(floor((clamp(master.passives[9,3],0,1)+clamp(master.passives[9,3]-4,0,10000)+clamp(master.notice[9,2],0,1))*einstein+(.5*master.notice[9,2]*leinstein))/((5-clamp(master.passives[9,3],0,4))/(1+.05*master.notice[9,2]*leinstein)))+" HP/Second)",//
	heart=floor((clamp(passives[9,3],0,1)+clamp(passives[9,3]-4,0,10000)+clamp(master.notice[9,2],0,1))*einstein+lheart); //heal per second
	heartseconds=(5-clamp(passives[9,3],0,4))/(1+.05*master.notice[9,2]*leinstein)
	heartbreak=(.05*passives[10,3])*einstein*damage+lheartbreak*ldamage; //retalitory damage
	revives=passives[16,3]+lrevives; //miracle
	prescription=passives[19,3]
	wealth=(lwealth)*(1+.05*passives[21,3])*einstein //1=normal 2= twice as frequent
	if passives[3,3]>0 {
	dondasblessing=1
	} else {
	dondasblessing=1.1+.1*passives[3,3]; //damage buff when half health
	}
	//(1-(1/(1+.02*((master.passives[1,3]+1)*einstein*master.luck)+(.02*(master.notice[1,2])*leinstein*master.lluck))))*100
	champion=(1-(1/((1+(.02*(passives[1,3]))*einstein*luck)+lchampion)))//chance to dodge
	graduate=lgraduate*(1+.05*passives[8,3])*einstein; //xp mult
	wisdom=lwisdom+passives[22,3]*.05*einstein
	clone=floor(passives[24,3]*einstein)+lclone
	vanish=1-((1-(.05*passives[25,3]*einstein))/lvanish)

	
	//if einstein>0 {
		for (i=0 ; i< array_length(passives)-1 ;i++) {
			{
				if i=3 or i = 14 or i =19 or i=15 {
					passives[i,6] = passivetext2[i,passives[i,3]]
				
				} else {
					if passives[i,3]<passives[i,4] {
				passives[i,6] = passivetext[i]
				}
					
				}
			}
		}
	updatestats=0
}

if instance_exists(yeancat) {
	if global.pause=0 {
if dondadollarsprevious != dondadollars  and master.moneynumbers = 1 {
	if (floor(dondadollars)-dondadollarsprevious) > 0 {
	var money= instance_create_layer(yeancat.x,yeancat.y,"uiitop", obj_moneycount);
	money.damage=floor(dondadollars)-dondadollarsprevious
	dollarfade=1
	}
	
	
	
}
	dondadollarsprevious=dondadollars
	} else {
		global.madj=((master.speedd+20)/60)/(1+obj_terrain.playeraltitude/5000)
	}
}
//if xpbuff/xpto > dolmove {
//	dolmove+=.05
//	if dolmove>xpbuff/xpto {
//		dolmove=xpbuff/xpto
//	}
//} else {
//	if dolmove != xpbuff/xpto {
//		dolmove-=.05
//		if dolmove<xpbuff/xpto {
//		dolmove=xpbuff/xpto
//	}
//	}
//}


if xpprev!=xp {
	xpprev=xp
	if xp!=0 {
		xpcount=2
	}
}
if xpcount>0 {
	xpcount-=.01;
}
if xpbuff<xp {
	xpbuff+=.05*(1+(xp-xpbuff)/2)
	if xpbuff>xp {
		xpbuff=xp;
	}
}
if levellast!=level {
	levellast=level
}


	//show in collection
for (var tt=0; tt<array_length(tasks); tt++) {
	//check not completed
//	if tasks[tt,3] = 0 {
			//check is passive
			if tasks[tt,6] = 2 {
				//check collection is not discovered
			if collection[tasks[tt,7]+15,1] <1 {
				//check that task is visible
				if tasks[tt,5] = 1 {
			
				collection[tasks[tt,7]+15,1]=1
			}
			}
			//check is weapon
			if tasks[tt,6] = 1 {
				//check collection is not discovered
				if collection[tasks[tt,7]+40,1] <1 {
				//check that task is visible
				if tasks[tt,5] = 1 {
				collection[tasks[tt,7]+40,1]=1
			}
			}
			}
			//check is music
			if tasks[tt,6] = 5 {
				//check collection is not discovered
				if collection[tasks[tt,7]+78,1] <1 {
				//check that task is visible
				if tasks[tt,5] = 1 {
				collection[tasks[tt,7]+78,1]=1
			}
			}
			}
		}
}
//}

//TASK COMPLETE
if ti!=tiprev {// only every second
check_tasks()//this script runs though the tasks and checks if requirements are met it will need to be optimized and expanded to handle new task ovehaul which will allow for randomly generated tasks.
}

//PLAYTIME
playtimegame=playtime+ti
overallkillsgame=overallkills+killcount
if killcount>recordkill {
	recordkill=killcount
}
chartotalkillgame[charselect]=chartotalkill[charselect]+killcount

//character level record
if master.charrecordlevel[master.charselect]<master.level {
	master.charrecordlevel[master.charselect]=master.level
}
//character kill record
if master.charrecordkill[master.charselect]<master.killcount {
	master.charrecordkill[master.charselect]=master.killcount
}
//character time record
if master.charrecordtime[master.charselect]<master.ti {
	master.charrecordtime[master.charselect]=master.ti
}


charselectlast=charselect

if instance_exists(obj_jayarnoldlogo) {
	if obj_jayarnoldlogo.playing=1 {
		if audio_is_playing(music) {
			audio_pause_all();
		}
	} else {
		if !audio_is_playing(music) {
			audio_resume_all();
		}
	}
	
} else {
	if start=0 {
	if !audio_is_playing(music) {
			audio_resume_all();
		}
	}
}