/// @description Insert description here
// You can write your code in this editor

if audio_emitter_exists(myEmitter) {
audio_emitter_position(myEmitter,x,y,0)
}

if scale != scalee {
	scale= (scale*30+scalee)/31
}
if scale>1.31 {
	 if hover<255 {
		 hover+=5*(global.room_speed_set/1000000*delta_time)
	 } else {
		 hover=255
	 }
} else {
	 if hover>0 {
		 hover-=5*(global.room_speed_set/1000000*delta_time)
	 } else {
		 hover=0
	 }
}

updatee=1-updatee

if time>= 30*pi {
	time-=30*pi-4
}
timee+=(global.room_speed_set/1000000*delta_time)*.2

colcol+=(global.room_speed_set/1000000*delta_time)*.3
if colcol>255 {
	colcol=0
}

if abs((room_height/2-180)-mouse_y)<100 and master.loading<=0 {
	time=(clamp(time+.2,0,30*pi))*(1-sqr(1-(abs((room_height/2-180)-mouse_y)/100)))+(clamp(((room_width/2+800)-(mouse_x-50))/(150/pi),0,30*pi))*(sqr(1-(abs((room_height/2-180)-mouse_y)/100)))
} else {
	time+=(global.room_speed_set/1000000*delta_time)*.2
}



rainbowh+=(global.room_speed_set/1000000*delta_time)*2
rainbowv+=(global.room_speed_set/1000000*delta_time)*2
if rainbowh>=sprite_get_width(spr_rainbowback)*1.1 {
	rainbowh=0
}
if rainbowv>=sprite_get_height(spr_rainbowback)*1.1 {
	rainbowv=0
}

image_xscale=scale
image_yscale=image_xscale

if onscreen=1 {
	if x< room_width/2 {
		x+=(global.room_speed_set/1000000*delta_time)*(20*(room_width-x)/500)
	} else {
		x=room_width/2
	}
} else {
	if onscreen=-1 {
		if x> room_width/2 {
		x-=(global.room_speed_set/1000000*delta_time)*(20*(x-room_width/2)/500)
	} else {
		x = room_width/2
		onscreen=1
	}
		
	} else {
		
	if x> 0 {
		x-=(global.room_speed_set/1000000*delta_time)*(20*(x)/500+1)
	} else {
		x=0
		if instance_exists(obj_checkbox) {
			with (obj_checkbox) {
				instance_destroy();
			}
		}
		if instance_exists(obj_arrowselect) {
			with (obj_arrowselect) {
				instance_destroy();
			}
		}
		if instance_exists(obj_arrowselect2) {
			with (obj_arrowselect2) {
				instance_destroy();
			}
		}
		if start=1 {


//if checkwep=1  and instance_exists(yeancat) {
////spawnweapons
//for (i=0; i<array_length(weapons); i++) {
//	//cellphone
//	if i=2 {
//		if weapons[i,2]=1 {
//			if !instance_exists(obj_cellphone) {
//				var weapp = instance_create_layer(yeancat.x,yeancat.y,"player",obj_cellphone)
//				weapp.wid=i
//			}
//		}
//	}
//}

//checkwep=0

//}
		}
		instance_destroy();
	}
	}
}