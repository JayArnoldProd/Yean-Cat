if onscreen !=0 {
	 if alp <.7 {
		 alp+=.01
	 }
} else {
	if alp >0 {
		 alp-=.01
	 }
}

//tasks
if menuselect=1 {
	if aniccount<5 {
		aniccount+=.1
	} else {
		aniccount=0
	}
	anicount=round(aniccount)
	
	
	var scrollx = swapx+x 
	var usw = sprite_get_width(spr_unlockselect)/2
	var ush = sprite_get_height(spr_unlockselect)/2
	if (mouse_check_button_pressed(mb_left)) {
		//highest uncompleted
			var setlect=array_length(master.tasks)-1
			for (var uu=setlect; uu>-1;uu--) {
				if master.tasks[uu,3]=1 and sorting=1{
					setlect-=1
				} else {
					break
				}
			}
			//lowest uncompleted
			var setlect2=0
			for (var uuu=0; uuu>array_length(master.tasks)-1;uuu++) {
				if master.tasks[uuu,3]=1 and sorting=1{
					setlect2+=1
				} else {
					break
				}
			}
	if point_in_rectangle(mouse_x,mouse_y,scrollx-500-.85*usw,y-175-.95*ush-100,scrollx-500+.85*usw,y-175+.95*ush-100) {
		//up	
		taskselect-=1
		if taskselect<setlect2 {
		
			taskselect=setlect
		}
		taskselectvalue=taskselect/(clamp(taskcount-1,0,9999999))
		if instance_exists(obj_slidervert) {
			obj_slidervert.valuee=taskselectvalue
		}
	}
	if point_in_rectangle(mouse_x,mouse_y,scrollx-500-.85*usw,y-175-.95*ush+100,scrollx-500+.85*usw,y-175+.95*ush+100) {
		//down
		taskselect+=1
		if taskselect>setlect {
			
			taskselect=setlect2
		}
		taskselectvalue=taskselect/(clamp(taskcount-1,0,9999999))
		if instance_exists(obj_slidervert) {
			obj_slidervert.valuee=taskselectvalue
		}
	}
	}
	
	
	

		var xx=swapx+x
		if freezescroll=0 {
	if point_in_rectangle(mouse_x,mouse_y,xx+550-(.55+.1*taskhov)*(1-abs(swapx)/(display_get_gui_width()*2))*618/2,y-150-(.55+.1*taskhov)*(1-abs(swapx)/(display_get_gui_width()*2))*618/2,xx+550+(.55+.1*taskhov)*(1-abs(swapx)/(display_get_gui_width()*2))*618/2,y-150+(.55+.1*taskhov)*(1-abs(swapx)/(display_get_gui_width()*2))*618/2) {
		taskhov=(taskhov*20+1)/21
		if taskhov>.99 {
			taskhov=1
		}
	} else {
		taskhov=(taskhov*20)/21
		if taskhov<.01 {
			taskhov=0
		}
	}
		} else {
				taskhov=(taskhov*20)/21
		if taskhov<.01 {
			taskhov=0
		}
			
		}

	taskcount=0
	unseen=0
	var holdid = array_length(master.tasks)
	var taskid = -1
	for (i=0; i<(array_length(master.tasks));i++) {
		
		if sorting=0 {
		if master.tasks[i,5]>=0 {
			taskcount+=1
		}
		} else {
			//hidecompleted
			if master.tasks[i,3]=0 {
			if master.tasks[i,5]>=0 {
				taskcount+=1
		}
		} else {
			if master.tasks[i,8]=0 {
				taskcount+=1
			}
		}
		}
		if i<=holdid {
		if taskselect+1=taskcount {
			holdid=i
			taskid=taskcount
		}
		}
		if master.tasks[i,3]=1 {
			if round(taskselect)+1!=taskcount {
			unseen=1
			freezescroll=1
			}
		}
	}
		if updatesel=1 {
		slid.valuee=taskselect/(clamp(taskcount-1,0,9999999))
		if sortingcol=0 {
		slid2.valuee=collectscrollvalue
		} else {
		slid2.valuee=collectscrollvalue
		}
		updatesel=0
	}
	if holdid = array_length(master.tasks) {
		holdid=0
	}
	if master.tasks[holdid,3]=1 {
		if master.tasks[holdid,5]>=0 {
			if master.tasks[holdid,8]=0 {
				if abs((taskselect+1)-taskid) = 0 {
				c_lock=make_color_hsv(color_get_hue(c_grey)*(1-unlockani)+color_get_hue(c_white)*(unlockani),color_get_saturation(c_grey)*(1-unlockani)+color_get_saturation(c_white)*(unlockani),color_get_value(c_grey)*(1-unlockani)+color_get_value(c_white)*(unlockani))
				if unlockani<1 {

					freezescroll=1
					if swapx<2 {
											if unlockani=0 {
						var locks = round(random(2))
if locks = 0 {
	lockssnd = audio_play_sound(unlocksound1,0,0);
}
if locks = 1 {
	lockssnd = audio_play_sound(unlocksound2,0,0);
}
if locks = 2 {
	lockssnd = audio_play_sound(unlocksound3,0,0);
}
audio_sound_gain(lockssnd,1*master.mastervol*master.uivol,0);
					}
					unlockani+=.05*clamp(1-unlockani,.1,1)
					}
				} else {
					freezescroll=0
					master.tasks[holdid,8]=1
					master.tasks[holdid,5]=1
					unlockani=0
					master.tasks[holdid,3]=2
				}
				}
			}
		}
		}
		if unlockani=0 {
	if slidingtasks=0 and unseen=0{
		taskselect=(taskselect*20+round(taskselect))/21
		if abs(taskselect-round(taskselect))<.01 {
			taskselect=round(taskselect)
		}
	} else {
		if unseen=0 {
		taskselect=taskselectvalue*(clamp(taskcount-1,0,9999999))
		} else {
			
			
			var taskcountt=0
			var taskcounttt=0
				var holdid2 = array_length(master.tasks)
	for (i=0; i<(array_length(master.tasks));i++) {
		if sorting=0 {
		if master.tasks[i,5]>=0 {
			taskcountt+=1
		}
		} else {
			//hidecompleted
			if master.tasks[i,3]=0 {
			if master.tasks[i,5]>=0 {
				taskcountt+=1
		}
		} else {
			if master.tasks[i,8]=0 {
				taskcountt+=1
			}
		}
		}
		if master.tasks[i,3]=1 {
			if i>=holdid+1{
					if i<=holdid2 {
taskcounttt=taskcountt
			holdid2=i
			//break
		}
			}
		}
	}
	if holdid2 = array_length(master.tasks) {
		holdid2=-1
	}
			if holdid2 !=-1 {
				if holdid<holdid2 {
					if master.tasks[holdid,3]!=1 {
						if abs(taskselect-(taskcounttt-1))>.49 {
						taskselect=(taskselect*20+(taskcounttt-1))/21
						} else {
												taskselect=(taskselect*20+round(taskselect))/21
		if abs(taskselect-round(taskselect))<.01 {
			taskselect=round(taskselect)
		}
						}
					}
				slid.valuee=taskselect/(clamp(taskcount-1,0,9999999))
				}
			} else {
			}
			
				
				

		
		
		
		
		}
	}
	}
		
		
	//tasks
//what it unlocks, 1requirement,2progress,3completed?,4image,5visible?,6rewardtype, 7collectionid (if item), 8 seen, 9cumulative?,10 instruction
//requirement id: 0= time survived, 1certain enemy killed
//rewardtype //type: 0=character, 1=weapon, 2=passive, 3=item, 4=stage, 5=music, 6=gamemode, 7=other, 
//tasks = [
//["Life of the Party","Survive 3 Minutes.",0,0,spr_lifeoftheparty,1,2,12,0,0,"A New Ability May Appear"],
//["","",0,0,spr_throwaway,1,7,-1,0,0,""],
//["","",0,0,spr_throwaway,1,7,-1,0,0,""],
//["","",0,0,spr_throwaway,1,7,-1,0,0,""],
//["","",0,0,spr_throwaway,1,7,-1,0,0,""]
//]
}

if menuselect=2 {
	
	if colsel!=-1 {
	if round(distomake)=-137 {
		distomake=-137
	}
	if distomake<-137 {
		if collectscrollvalue > 0  {
		collectscrollvalue-=.002*(global.room_speed_set/1000000*delta_time)*(5+abs(distomake+137))/10
		slid2.valuee=collectscrollvalue
		}
	}
	if distomake>-137 {
		if collectscrollvalue < 1  {
		collectscrollvalue+=.002*(global.room_speed_set/1000000*delta_time)*(5+abs(distomake+137))/10
		slid2.valuee=collectscrollvalue
		}
	}
	
	if slidecollect< 500 {
		slidecollect=(slidecollect*40+500)/41
		if slidecollect>499 {
			slidecollect=500
		}
	}
	if gro>1.08 {
		gro=(gro*20+1.08)/21
	} else {
		gro=1.08
	}
} else {
		if slidecollect> 0 {
		slidecollect=(slidecollect*40)/41
		if slidecollect<1 {
			slidecollect=0
		}
	}
	if gro<1.35 {
		gro=(gro*20+1.35)/21
	} else {
		gro=1.35
	}
}

if slidecollect>0 {
	if swapcol=0 {
if colswapx>0 {
colswapx=(colswapx*20)/21
if colswapx<1 {
	colswapx=0
}
}
} else {
	if colswapx>-display_get_gui_width() {
colswapx=(colswapx*20-display_get_gui_width()*2)/21
if colswapx<(-display_get_gui_width()*.75) {
	examcol=colsel
	swapcol=0
	colswapx=display_get_gui_width()*.75

}
}
}
} else {
	//examcol=-1
}
	
	//collectibles
//name,1state, 2amount collected, 3amount til next,4enabled,5upgradeprice,6level,7seen,i8mage, 9can disable, 10item id, 11image_index, 12unlocks what
//state: 0 =locked, 1=unlocked, 2=obtained.
//collection=[
//["Penny",1,0,-1,1,-1,-1,0,spr_penny,0,-1,0,-1],
//["Dollar",1,0,-1,1,-1,-1,0,spr_dondadollar,0,-1,0,-1],
//["Burger",1,0,100,1,100,-1,0,spr_bigmac,0,-1,0,-1],
//["Defcon",1,0,10,1,100,-1,0,spr_defcon,0,-1,0,4],
//["Defcon 2",0,0,10,0,1000,-1,0,spr_defcon,0,-1,1,5],
//["Defcon 3",0,0,10,0,10000,-1,0,spr_defcon,0,-1,2,-1],
//["Shades",0,0,10,1,1000,-1,0,spr_shades,0,-1,0,-1],
//["Oxycontin",1,0,10,1,100,-1,0,spr_oxy,0,-1,0,-1]

//]

}


if menuselect = 3 {
	//create shop buttons
	if !instance_exists(obj_upgradeslot) {
	instance_create_layer(room_width/2,room_height/2,"uiitop",obj_upgradeslot)
	}
	
} else {
	if instance_exists(obj_upgradeslot) {
		with (obj_upgradeslot) {
			instance_destroy()
		}
	}
	//destroy shop buttons
}






if swapmenu=0 {
if swapx>0 {
swapx=(swapx*30)/31
if swapx<1 {
	swapx=0
}
}
} else {
	if swapx>-display_get_gui_width()*2 {
swapx=(swapx*30-display_get_gui_width()*2)/31
if swapx<(-display_get_gui_width()*2+500) {
	menuselect=menuselectt
	swapmenu=0
	swapx=display_get_gui_width()*2

}
}
}

time+=(global.room_speed_set/1000000*delta_time)*.03
if selected != -1 {
	if slide < 1 {
	slide+=(global.room_speed_set/1000000*delta_time)*.05*clamp(1-slide,.1,1);
	} else {
		slide=1
	}
	
} else {
	if slide > 0 {
		slide-=(global.room_speed_set/1000000*delta_time)*.05*clamp(slide,.1,1);
	} else {
		slide = 0;
	}
}

if onscreen=1 {
	if x< room_width/2 {
		x+=(global.room_speed_set/1000000*delta_time)*20*(room_width-x)/500
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
		
	} else {
		
	if x> 0 {
		x-=(global.room_speed_set/1000000*delta_time)*(20*(x)/500+1)
	} else {
		x=0
		instance_destroy();
	}
	}
}