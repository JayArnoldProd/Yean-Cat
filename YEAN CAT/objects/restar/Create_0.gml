/// @description Insert description here
// You can write your code in this editor
obj_Client.show_chatbox=false

master.playtime=master.playtimegame
master.overallkills=master.overallkillsgame
master.chartotalkill[master.charselect]=master.chartotalkillgame[master.charselect]
obj_controlhs.synked = 0 
page=0
snd=0
xpnote=0
xpnote2=0
xpsoundd=audio_play_sound(nothingsound,0,0)
if master.characters[master.charselect,3]/master.characters[master.charselect,4]<.875 {
		snd=6
		}
		if master.characters[master.charselect,3]/master.characters[master.charselect,4]<.75 {
		snd=5
		}
		if master.characters[master.charselect,3]/master.characters[master.charselect,4]<.625 {
		snd=4
		}
		if master.characters[master.charselect,3]/master.characters[master.charselect,4]<.5 {
		snd=3
		}
		if master.characters[master.charselect,3]/master.characters[master.charselect,4]<.375 {
		snd=2
		}
		if master.characters[master.charselect,3]/master.characters[master.charselect,4]<.25 {
		snd=1
		}
		if master.characters[master.charselect,3]/master.characters[master.charselect,4]<.125 {
		snd=0
		}
		
		
		
		
		
xpsound=audio_play_sound(nothingsound,0,0)
myEmitter=audio_emitter_create()
levv=0
deet=0
movecat=1
stretched=0
starshift=0
bowshift=0
bowstr=0
starstr=0
repeatt=4
pointxt=""
levelprev=master.characters[master.charselect,2]
//-.316
xplength=round(((75+round(10*sqrt((master.level)/10)-3.16))*(1+2*round(10*sqrt((master.level)/10)-3.16)/(master.characters[master.charselect,4]))))
xptime=0
xpcount=0
xxx=0
yyy=0
if clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4],0,.25)/.25*100 < 100 {
yyy=-master.camscale*(790)/2+10*master.camscale
xxx=master.camscale*(1000)*((clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4],0,.25)/.25*100)-50)/100
} else {
	if clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4]-.25,0,.25)/.25*100 < 100 {
yyy=master.camscale*(790)*((clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4]-.25,0,.25)/.25*100)-50)/100+10*master.camscale
xxx=master.camscale*(1000)/2
		
} else {
	if clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4]-.5,0,.25)/.25*100 < 100 {
yyy=master.camscale*(790)/2+10*master.camscale
xxx=-master.camscale*(1000)*((clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4]-.5,0,.25)/.25*100)-50)/100

} else {
	if clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4]-.75,0,.25)/.25*100 < 100 {
yyy=-master.camscale*(790)*((clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4]-.75,0,.25)/.25*100)-50)/100+10*master.camscale
xxx=-master.camscale*(1000)/2

}
}
}
}
movelev=0;
stretchy=4
stretchyy=4
time=0
xpgain=round(10*sqrt((master.level)/10)-3.16)*(master.lookingfortrouble+2)/2
xpstep=xpgain/xplength
scr_save_game();
x=room_width/2
y=0
kind=0
al=0
falling=1;
image_xscale=2
image_yscale=2
image_speed=0
image_index=0
load=1
variant=-1;
anicount=0
numb=1
level=0
stopped=0
checkcount=1
if !instance_exists(yeancat) {
	instance_create_layer(x,y,"player",yeancat)
}
		
for (i=0; i<=3; i++) {
	if master.modes[i]=1 {
		var ch1=instance_create_layer(room_width, room_height/2+200, "uiitop", obj_summarybutton);
		ch1.num=checkcount
		ch1.abcd=i
		checkcount+=1
	}
}

with (stemmanager) {
	if master.record=1 {
		//scr_savetrack();
	}
}
dcount=10
lcount=10
ddcount=10
dlcount=10
dco=0
uco=0
dwav=0
uwav=0
dwavedir=1
uwavedir=1
with (master) {

	if audio_sync_group_is_playing(sg) {	
	audio_stop_sync_group(sg);
	}
	if audio_group_is_loaded(sg) {
	audio_group_unload(agMusic);
	audio_group_unload(agSFX);
	audio_group_unload(agUI);
	audio_group_unload(agDialouge);

	audio_group_unload(agVocals);
	audio_group_unload(agMelodies);
	audio_group_unload(agDrums);
	audio_group_unload(agBass);
	}
	audio_stop_all();
}

killrec=0
timerec=0
levelrec=0
prevkillrec=0
prevtimerec=0
prevlevelrec=0
if master.killcount>master.recordkill {
	prevkillrec=master.recordkill
	master.recordkill=master.killcount
	killrec=master.killcount
	
}
if master.ti>master.recordtime {
	prevtimerec=master.recordtime
	master.recordtime=master.ti
	timerec=master.ti
}
if master.level>master.recordlevel {
	prevlevelrec=master.recordlevel
	master.recordlevel=master.level
	levelrec=master.level
}

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
global.pause=1
