/// @description Insert description here
// You can write your code in this editor

y=room_height/2+50
if onscreen=1 {
	audio_emitter_position(myEmitter,mouse_x,mouse_y,0)
	if x< room_width/2 {
		x+=20*(room_width-x)/500
	} else {
		x=room_width/2
	}
} else {
	if onscreen=-1 {
		if x> room_width/2 {
		x-=(global.room_speed_set/1000000*delta_time)*20*(x-room_width/2)/500
	} else {
		x = room_width/2
		onscreen=1
	}
	audio_emitter_position(myEmitter,mouse_x,mouse_y,0)
	} else {
		if instance_exists(obj_begin) {
		obj_begin.x=x+50
		obj_begin.y=room_height/2+125
	}
	audio_emitter_position(myEmitter,x,y,0)
		
	if x> 0 {
		x-=(global.room_speed_set/1000000*delta_time)*(20*(x)/500+1)
	} else {
		x=0
		if start=1 {
					with (master) {
						for (i=0; i<array_length(weapons); i++) {
	diswep[i]=weapons[i,3]
	lockwep[i]=weapons[i,13]
	}
	for (i=0; i<array_length(items); i++) {
	disite[i]=items[i,3]
	}
	for (i=0; i<array_length(passives); i++) {
	dispas[i]=clamp(notice[i,0],0,1)
	lockpas[i]=clamp(notice[i,1],0,1)
	//passives[i,7]=lockpas[i]
	
	
	
	}
itemfrequencyset=1;
rampitem=0;
for (i=0; i < array_length(items); i++) {
							items[i,4]=itemsload[i,4]
							items[i,1]=itemsload[i,1]
							items[i,2]=itemsload[i,2]
						}
			checkwep=1
		if characters[charselect,13] != -1 {
			wepcount=1
	weapons[characters[charselect,13],2]=1
	weapons[characters[charselect,13],3]=1
	weapons[characters[charselect,13],4]=1
	weap[0]=characters[charselect,13]
		}
}
		master.selectedstage=stageid
		master.mainmenu=0
		if stageid!=0 {
	master.loop=0
	master.startmusic=0
	audio_stop_all();
}
		}
		with (obj_begin) {
			instance_destroy();
		}
		with (obj_arrowselect) {
			instance_destroy();
		}
		with (obj_arrowselect2) {
			instance_destroy();
		}
		instance_destroy();
	}
	}
}
if charselect=0 {

c1=make_color_hsv((time*4+255*0/8) % 255,255,255)
c2=make_color_hsv((time*4+255*1/8) % 255,255,255)
c3=make_color_hsv((time*4+255*2/8) % 255,255,255)
c4=make_color_hsv((time*4+255*3/8) % 255,255,255)
c5=make_color_hsv((time*4+255*4/8) % 255,255,255)
c6=make_color_hsv((time*4+255*5/8) % 255,255,255)
c7=make_color_hsv((time*4+255*6/8) % 255,255,255)
c8=make_color_hsv((time*4+255*7/8) % 255,255,255)
}
if charselect=1 {

c1=c_red
c2=c_red
c3=c_red
c4=c_red
c5=c_maroon
c6=c_maroon
c7=c_maroon
c8=c_maroon
}

if stageid=0 {

k1=c_red
k2=c_aqua
k3=c_lime
k4=c_purple
k5=c_blue
k6=c_orange
k7=c_yellow
k8=c_green
}
if stageid=1 {

k1=c_black
k2=c_dkgray
k3=c_grey
k4=c_ltgrey
k5=c_ltgrey
k6=c_grey
k7=c_dkgray
k8=c_black
}


cc1=make_color_hsv((color_get_hue(cc1)*9+color_get_hue(c1))/10,(color_get_saturation(cc1)*9+color_get_saturation(c1))/10,(color_get_value(cc1)*9+color_get_value(c1))/10)
cc2=make_color_hsv((color_get_hue(cc2)*9+color_get_hue(c2))/10,(color_get_saturation(cc2)*9+color_get_saturation(c2))/10,(color_get_value(cc2)*9+color_get_value(c2))/10)
cc1=make_color_hsv((color_get_hue(cc3)*9+color_get_hue(c3))/10,(color_get_saturation(cc3)*9+color_get_saturation(c3))/10,(color_get_value(cc3)*9+color_get_value(c3))/10)
cc4=make_color_hsv((color_get_hue(cc4)*9+color_get_hue(c4))/10,(color_get_saturation(cc4)*9+color_get_saturation(c4))/10,(color_get_value(cc4)*9+color_get_value(c4))/10)
cc5=make_color_hsv((color_get_hue(cc5)*9+color_get_hue(c5))/10,(color_get_saturation(cc5)*9+color_get_saturation(c5))/10,(color_get_value(cc5)*9+color_get_value(c5))/10)
cc6=make_color_hsv((color_get_hue(cc6)*9+color_get_hue(c6))/10,(color_get_saturation(cc6)*9+color_get_saturation(c6))/10,(color_get_value(cc6)*9+color_get_value(c6))/10)
cc7=make_color_hsv((color_get_hue(cc7)*9+color_get_hue(c7))/10,(color_get_saturation(cc7)*9+color_get_saturation(c7))/10,(color_get_value(cc7)*9+color_get_value(c7))/10)
cc8=make_color_hsv((color_get_hue(cc8)*9+color_get_hue(c8))/10,(color_get_saturation(cc8)*9+color_get_saturation(c8))/10,(color_get_value(cc8)*9+color_get_value(c8))/10)

kk1=make_color_hsv((color_get_hue(kk1)*9+color_get_hue(k1))/10,(color_get_saturation(kk1)*9+color_get_saturation(k1))/10,(color_get_value(kk1)*9+color_get_value(k1))/10)
kk2=make_color_hsv((color_get_hue(kk2)*9+color_get_hue(k2))/10,(color_get_saturation(kk2)*9+color_get_saturation(k2))/10,(color_get_value(kk2)*9+color_get_value(k2))/10)
kk1=make_color_hsv((color_get_hue(kk3)*9+color_get_hue(k3))/10,(color_get_saturation(kk3)*9+color_get_saturation(k3))/10,(color_get_value(kk3)*9+color_get_value(k3))/10)
kk4=make_color_hsv((color_get_hue(kk4)*9+color_get_hue(k4))/10,(color_get_saturation(kk4)*9+color_get_saturation(k4))/10,(color_get_value(kk4)*9+color_get_value(k4))/10)
kk5=make_color_hsv((color_get_hue(kk5)*9+color_get_hue(k5))/10,(color_get_saturation(kk5)*9+color_get_saturation(k5))/10,(color_get_value(kk5)*9+color_get_value(k5))/10)
kk6=make_color_hsv((color_get_hue(kk6)*9+color_get_hue(k6))/10,(color_get_saturation(kk6)*9+color_get_saturation(k6))/10,(color_get_value(kk6)*9+color_get_value(k6))/10)
kk7=make_color_hsv((color_get_hue(kk7)*9+color_get_hue(k7))/10,(color_get_saturation(kk7)*9+color_get_saturation(k7))/10,(color_get_value(kk7)*9+color_get_value(k7))/10)
kk8=make_color_hsv((color_get_hue(kk8)*9+color_get_hue(k8))/10,(color_get_saturation(kk8)*9+color_get_saturation(k8))/10,(color_get_value(kk8)*9+color_get_value(k8))/10)
time+=.05
chartext=master.characters[charselect,1]


//upgrade
rhyx=x-410
rhyy=y-125-62
flox=x+410
floy=y-125-62
lyrx=x-410
lyry=y+105-62
swax=x+410
sway=y+105-62

//0unlocked //1name, //2level,//3xp,//4xpto,//5Lyricism (Damage), //6Rhythm (AT rate), //7Flow (Movement), //8Swag (Money Value), variation (evolution?,


	//rhythm
	//subtract
	if point_in_rectangle(mouse_x,mouse_y,(rhyx-77)-15,rhyy-15,(rhyx-77)+15,rhyy+15) {
		if master.characters[master.charselect,6]>1 {
		if master.cansubtract=1 {
			if mouse_check_button(mb_left) {
				dontpause=1
				alarm[1]=100
			if holdtime=0 or holdtime=100 or (holdtime>100 and holdtime <=200 and holdtime % 25=0) or (holdtime>200 and holdtime % 10=0) {
				master.characters[master.charselect,6]-=1
				sound=audio_play_sound_on(myEmitter,uibuttonsound7,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
				}
				holdtime+=1
			}  else {
			holdtime=0
		}
		rhyms=((rhyms*9)+(1.4))/10
		}  else {
			holdtime=0
		}
		}  else {
			holdtime=0
			if mouse_check_button(mb_left) {
				sound=audio_play_sound_on(myEmitter,cantdothat1,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
			}
		}
	} else {

		rhyms=((rhyms*9)+(1))/10
	}
	//add
	if point_in_rectangle(mouse_x,mouse_y,(rhyx+77)-15,rhyy-15,(rhyx+77)+15,rhyy+15) {
		if (master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3)<master.characters[master.charselect,2] {
			if mouse_check_button(mb_left) {
				dontpause=1
				alarm[1]=100
				if holdtime=0 or holdtime=100 or (holdtime>100 and holdtime <=200 and holdtime % 25=0) or (holdtime>200 and holdtime % 10=0) {
				master.characters[master.charselect,6]+=1
				sound=audio_play_sound_on(myEmitter,uibuttonsound8,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
				}
				holdtime+=1
			}  else {
			holdtime=0
		}
			rhyps=((rhyps*9)+(1.4))/10
	}  else {
			holdtime=0
			if mouse_check_button_pressed(mb_left) {
				sound=audio_play_sound_on(myEmitter,cantdothat1,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
			}
		}
	} else {

		rhyps=((rhyps*9)+(1))/10
	}
	
	//flow
	//subtract
	if point_in_rectangle(mouse_x,mouse_y,(flox-77)-15,floy-15,(flox-77)+15,floy+15) {
		if master.cansubtract=1 {
			if master.characters[master.charselect,7]>1 {
			if mouse_check_button(mb_left) {
				dontpause=1
				alarm[1]=100
				if holdtime=0 or holdtime=100 or (holdtime>100 and holdtime <=200 and holdtime % 25=0) or (holdtime>200 and holdtime % 10=0) {
				master.characters[master.charselect,7]-=1
				sound=audio_play_sound_on(myEmitter,uibuttonsound7,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
				}
				holdtime+=1
			}  else {
			holdtime=0
		}

		floms=((floms*9)+(1.4))/10
		}  else {
			holdtime=0
			if mouse_check_button_pressed(mb_left) {
				sound=audio_play_sound_on(myEmitter,cantdothat1,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
			}
		}
		}  else {
			holdtime=0
		}
	}  else {
		floms=((floms*9)+(1))/10
	}
	//add
	if point_in_rectangle(mouse_x,mouse_y,(flox+77)-15,floy-15,(flox+77)+15,floy+15) {
		if (master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3)<master.characters[master.charselect,2] {
			if mouse_check_button(mb_left) {
				dontpause=1
				alarm[1]=100
				if holdtime=0 or holdtime=100 or (holdtime>100 and holdtime <=200 and holdtime % 25=0) or (holdtime>200 and holdtime % 10=0) {
				master.characters[master.charselect,7]+=1
				sound=audio_play_sound_on(myEmitter,uibuttonsound8,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
				}
				holdtime+=1
			}  else {
			holdtime=0
		}
			flops=((flops*9)+(1.4))/10
	}  else {
			holdtime=0
			if mouse_check_button_pressed(mb_left) {
				sound=audio_play_sound_on(myEmitter,cantdothat1,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
			}
		}
	} else {
		flops=((flops*9)+(1))/10
	}
	
	//lyricism
	//subtract
	if point_in_rectangle(mouse_x,mouse_y,(lyrx-77)-15,lyry-15,(lyrx-77)+15,lyry+15) {
		if master.cansubtract=1 {
			if master.characters[master.charselect,5]>1 {
					if mouse_check_button(mb_left) {
						dontpause=1
						alarm[1]=100
			if holdtime=0 or holdtime=100 or (holdtime>100 and holdtime <=200 and holdtime % 25=0) or (holdtime>200 and holdtime % 10=0) {
				master.characters[master.charselect,5]-=1
				sound=audio_play_sound_on(myEmitter,uibuttonsound7,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
				}
				holdtime+=1
		}   else {
			holdtime=0
		}
		lyrms=((lyrms*9)+(1.4))/10
			}  else {
			holdtime=0
			if mouse_check_button_pressed(mb_left) {
				sound=audio_play_sound_on(myEmitter,cantdothat1,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
			}
		}
		}  else {
			holdtime=0
		}
	} else {
		lyrms=((lyrms*9)+(1))/10
	}
	//add
	if point_in_rectangle(mouse_x,mouse_y,(lyrx+77)-15,lyry-15,(lyrx+77)+15,lyry+15) {
		if (master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3)<master.characters[master.charselect,2] {
			if mouse_check_button(mb_left) {
				dontpause=1
				if holdtime=0 or holdtime=100 or (holdtime>100 and holdtime <=200 and holdtime % 25=0) or (holdtime>200 and holdtime % 10=0) {
				master.characters[master.charselect,5]+=1
				sound=audio_play_sound_on(myEmitter,uibuttonsound8,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
				}
				holdtime+=1
			}   else {
			holdtime=0
		}
			lyrps=((lyrps*9)+(1.4))/10
	}  else {
			holdtime=0
			if mouse_check_button_pressed(mb_left) {
				sound=audio_play_sound_on(myEmitter,cantdothat1,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
			}
		}
	} else {
		lyrps=((lyrps*9)+(1))/10
	}
	
	//swag
	//subtract
	if point_in_rectangle(mouse_x,mouse_y,(swax-77)-15,sway-15,(swax-77)+15,sway+15) {
		if master.cansubtract=1 {
			if master.characters[master.charselect,8]>1 {
			if mouse_check_button(mb_left) {
				dontpause=1
				if holdtime=0 or holdtime=100 or (holdtime>100 and holdtime <=200 and holdtime % 25=0) or (holdtime>200 and holdtime % 10=0) {
				master.characters[master.charselect,8]-=1
				sound=audio_play_sound_on(myEmitter,uibuttonsound7,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
				}
				holdtime+=1
				
		} else {
			holdtime=0
		}
		swams=((swams*9)+(1.4))/10
			}  else {
			holdtime=0
			if mouse_check_button_pressed(mb_left) {
				sound=audio_play_sound_on(myEmitter,cantdothat1,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
			}
		}
		}	  else {
			holdtime=0
		}
	} else {
		swams=((swams*9)+(1))/10
	}
	//add
	if point_in_rectangle(mouse_x,mouse_y,(swax+77)-15,sway-15,(swax+77)+15,sway+15) {
		if (master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3)<master.characters[master.charselect,2] {
			if mouse_check_button(mb_left) {
				dontpause=1
				if holdtime=0 or holdtime=100 or (holdtime>100 and holdtime <=200 and holdtime % 25=0) or (holdtime>200 and holdtime % 10=0) {
				master.characters[master.charselect,8]+=1
				sound=audio_play_sound_on(myEmitter,uibuttonsound8,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
				}
				holdtime+=1
			}
	swaps=((swaps*9)+(1.4))/10
	}  else {
			holdtime=0
			if mouse_check_button_pressed(mb_left) {
				sound=audio_play_sound_on(myEmitter,cantdothat1,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
			}
		}
	} else {
		swaps=((swaps*9)+(1))/10
	}
	
