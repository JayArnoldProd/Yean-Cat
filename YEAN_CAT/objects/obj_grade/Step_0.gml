exani+=.5
time+=.25
if exani>11 {
	exani=0
}
if master.notice[idd,1]=2 {
unlockani=1
}



if instance_exists(obj_upgrademenu) {
	lev=obj_upgrademenu.upgrades[idd,1];
x=obj_upgrademenu.x+((ind % 8)*1000-(1000/2))*.2-615//+clamp(floor((ind)/8/2),0,1)*100
y=obj_upgrademenu.y+floor((ind)/8)*(250-obj_upgrademenu.slide*95)-220+obj_upgrademenu.slide*270
if audio_emitter_exists(myEmitter) {
	audio_emitter_position(myEmitter,x,y,0);
}
if image_xscale!=scale+(1-obj_upgrademenu.slide)*.2 {
image_xscale+=(scale+(1-obj_upgrademenu.slide)*.2-image_xscale)/10
image_yscale=image_xscale
}
//0discovered:0no1yes,2YES  1unlocked: 0no, 1yes, 2,YES, 2level,3levelcap
if ltime>=60 {
	lock=1
		master.notice[idd,0]=2
		master.notice[idd,1]=2
		obj_upgrademenu.dfade=0
		
}
if unlock=1 {
		if obj_upgrademenu.dfade<1 {
		obj_upgrademenu.dfade+=.02
		} else {
			obj_upgrademenu.dfade=1
			if master.notice[idd,1] = 0 {
				master.notice[idd,0]=2
				//obj_upgrademenu.dfade=0
			} else {
				master.notice[idd,0]=2
				master.notice[idd,1]=2
				//obj_upgrademenu.dfade=0
			}
		}
}

if unlock=2 {
	if unlockani<1 {
		unlockani+=.05*clamp(1-unlockani,.1,1)
	} else {
		if ltime<60 {
		ltime+=1
		if obj_upgrademenu.dfade<1 {
		obj_upgrademenu.dfade+=.02
		} else {
			obj_upgrademenu.dfade=1
		}
		}
	}
}

lockcol=make_color_hsv(color_get_hue(c_grey)*(1-unlockani)+color_get_hue(c_white)*(unlockani),color_get_saturation(c_grey)*(1-unlockani)+color_get_saturation(c_white)*(unlockani),color_get_value(c_grey)*(1-unlockani)+color_get_value(c_white)*(unlockani))

} else {
	instance_destroy();
}

