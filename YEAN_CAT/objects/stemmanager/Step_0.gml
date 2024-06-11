/// @description Insert description here
// You can write your code in this editor

if global.pause=1 {
	exit
}

if master.stems_loaded=false {
	exit
}
if master.start=0 {
if os_type=os_ios or os_type=os_android {
	master.start=1
}
}
if master.start=0 {
	exit
}

if lcount > array_length(lyrics)-1 {
	lcount=array_length(lyrics)-1
}


if master.stemplay=1 {
	if master.stemtime>2 {
	if lineload>99 {
	} else {
		lineload+=1
	}
	} else {
		if lineload>0 {
	} else {
		lineload-=1
	}
	}
}

if master.stemplay=1 {
	
if framee<array_length(loadedtrack)-1 {
	if loadedtrack[framee,0]=1 {
		instance_create_layer(room_width/2+1920/2*master.camscale,room_height/2-693*master.camscale/2,"stars",bar);
instance_create_layer(room_width/2+1920/2*master.camscale,room_height/2-250*master.camscale/2,"stars",bar);
instance_create_layer(room_width/2+1920/2*master.camscale,room_height/2+250*master.camscale/2,"stars",bar);
instance_create_layer(room_width/2+1920/2*master.camscale,room_height/2+691*master.camscale/2,"stars",bar);
	}
	if loadedtrack[framee,1]=1 {
		var wt = instance_create_layer(room_width/2+1920/2*master.camscale,room_height/2+693*master.camscale/2,"player",whitebar);
		wt.typee=1
	}
	if loadedtrack[framee,2]=1 {
		var wt = instance_create_layer(room_width/2+1920/2*master.camscale,room_height/2+250*master.camscale/2,"player",whitebar);
	wt.typee=2
	}
	if loadedtrack[framee,3]=1 {
		var wt = instance_create_layer(room_width/2+1920/2*master.camscale,room_height/2-250*master.camscale/2,"player",whitebar);
	wt.typee=3
	}
	if loadedtrack[framee,4]=1 {
		var wt = instance_create_layer(room_width/2+1920/2*master.camscale,room_height/2-691*master.camscale/2,"player",whitebar);
	wt.typee=4
	}
	if loadedtrack[framee,5]=1 {
		var wt = instance_create_layer(room_width/2,room_height/2,"player",lyric);
	wt.ly=loadedtrack[framee,6]
	wt.duration=loadedtrack[framee,7]
	wt.durationset=loadedtrack[framee,7]

	}
}
}

//if audio_is_playing(master.music) {
//if (delta_second > 0) {
  //delta_second -= delta_time;
  
 if (framee > frameprev) {
 
	  if framee>(array_length(trackk)-1) {
	array_resize(trackk, framee+1);
	trackk[framee,0]=0;
	trackk[framee,1]=0;
	trackk[framee,2]=0;
	trackk[framee,3]=0;
	trackk[framee,4]=0;
	trackk[framee,5]=0;
	trackk[framee,6]="";
	trackk[framee,7]=0;
	  }
	if recbeat = 1 {
		trackk[framee,0]=1
		recbeat=0
	}
	if recmelody = 1 {
		trackk[framee,3]=1
		recmelody=0
	}
	if recdrums = 1 {
		trackk[framee,2]=1
		recdrums=0
	}
	if recbass = 1 {
		trackk[framee,1]=1
		recbass=0
	}
	if recvocal = 1 {
		trackk[framee,4]=1
		recvocal=0
	}
	if reclyric = 1 {
		trackk[framee,5]=1
		trackk[framee,6]=lcount
		reclyric=0
		llast=framee
		lcount+=1
	}
	//delta_second = 1000000/framerate;
	
}
	
frameprev=framee
	
framee = clamp(master.hour * framerate * 3600
                   + master.minute * framerate * 60
                   + master.second * framerate
				   + floor((audio_sync_group_get_track_pos(master.sg) - floor(audio_sync_group_get_track_pos(master.sg)))*framerate),framee,framee+1);
                   //+ round(((framerate) * 1000000 / 30 - master.delta_second) * (framerate) / 1000000)
	
//if framee>frameprev+1 {
//		framee=frameprev+1
//	}
	
	if save_track=1 {
	scr_savetrack();
	//exit
	}

//}
//}

