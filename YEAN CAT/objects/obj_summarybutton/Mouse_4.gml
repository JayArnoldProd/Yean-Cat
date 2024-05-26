/// @description Insert description here
// You can write your code in this editor
if instance_exists(restar) {
	if restar.xptime>=restar.xplength {
if restar.falling!=-1{
if abcd=0 {
	restar.movecat=2
	with (master){
			for (i=0; i<array_length(runkills); i++ ) {
	runkills[i]=0
			}
			restar.falling=-1


killcount=0
killcountlast=0
kps=0
	}
	scr_save_game()

}
if abcd=1 {
	with (restar) {
	repeatt=4
xplength=3*round((75+round(10*sqrt((master.level)/10)-3.16))*(1+2*round(10*sqrt((master.level)/10)-3.16)/(master.characters[master.charselect,4])))
xptime=0
xpcount=0
xpgain=round(10*sqrt((master.level)/10)-3.16)*(master.lookingfortrouble+2)/2
xpstep=xpgain/xplength


	}
	with (obj_summarybutton) {
		ad=0
	}
	instance_destroy();
}



//restart
if abcd=2 {
	obj_backg.slideplanet=0
	if instance_exists(restar) {
		restar.deet=0
	}
	with (master)	{
	ti=0
	for (i=0; i<array_length(runkills); i++ ) {
	runkills[i]=0
}
killcount=0
killcountlast=0
kps=0
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

	scr_save_game()
	with (enemy) {
		instance_destroy();
	}
	with (obj_boss) {
		instance_destroy();
	}
	with (projectile_parent) {
		instance_destroy();
	}
	adsleft=1
	//with (master) {
weap=[
-1,
-1,
-1,
-1,
-1,
-1
]

pass=[
-1,
-1,
-1,
-1,
-1,
-1
]
revives=0
lrevives=0
wepcount=0
maxweapons=maxweapset
pascount=0
choicecount=3

skipset=3
skips=3
rollset=3
rerolls=3
banishset=3
banishes=3

for (i=0; i < array_length(worlditems); i++) {
worlditems[i,3]=0;
}

for (i=0; i < array_length(weapons); i++) {
weapons[i,2]=0;
weapons[i,4]=0;
weapons[i,14]=0;
}

for (i=0; i < array_length(passives); i++) {
passives[i,1]=0;
passives[i,3]=0;
passives[i,8]=0;
}

for (i=0; i < array_length(spaceboss); i++) {
	spaceboss[i,10]=0
}

if characters[charselect,13] != -1 {
	wepcount=1
	weapons[characters[charselect,13],2]=1
	weapons[characters[charselect,13],3]=1
	//weapons[characters[charselect,13],13]=1
	weapons[characters[charselect,13],4]=1
	weap[0]=characters[charselect,13]
}

speedgui=1
control = false
sfx_loaded=false;
stems_loaded=false;
revani=0
speedd=10
magnet=100
time=0
vert=0
horz=0
ti=0


level=1
levellast=level;
xp=0
xpprev=0
xpto=2
xpcount=0
xpbuff=0;
track=1

loop=0
delta_second = 1000000;
second=0;
minute=0;
hour=0;
audio_destroy_sync_group(sg);
sg = audio_create_sync_group(true);

global.room_speed_set=60
rspeed=60
loading=0
if !audio_group_is_loaded(agMusic) {
	audio_group_load(agMusic);
}
if !audio_group_is_loaded(agSFX) {
audio_group_load(agSFX);
}
if !audio_group_is_loaded(agUI) {
audio_group_load(agUI);
}
if !audio_group_is_loaded(agDialouge) {
audio_group_load(agDialouge);
}
if !audio_group_is_loaded(agVocals) {
audio_group_load(agVocals);
}
if !audio_group_is_loaded(agMelodies) {
audio_group_load(agMelodies);
}
if !audio_group_is_loaded(agDrums) {
audio_group_load(agDrums);
}
if !audio_group_is_loaded(agBass) {
audio_group_load(agBass);
} else {
	sfx_loaded=true;
stems_loaded=true;
}

limitmaxlevel=[
[[200,100000,200,30],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[200,100000,5,5],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100,500,100,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,100000,50,50],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,100000,50,4],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,100000,50,50],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,100000,50,50],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,100000,50,50],[100000,100000,100000,100000]],
[[50,100000,100,50],[100000,100000,100000,100000]],
[[100,100000,100,100],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,100000,50,50],[100000,100000,100000,100000]],
[[50,100000,50,50],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,100000,50,50],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,100,50,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,50,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]]
]

updatetext=1
updatestats=1
banlist= [
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0]
]
checkwep=1

//0 never 1 always
randomchoice=0
randomchoiceonce=0


	}
	if !instance_exists(yeancat) {
		instance_create_layer(room_width/2, room_height/2,"player",yeancat)

	}
		yeancat.positionplace=1
		master.spawnthings=0
		restar.falling=-1
}
if abcd=3 { //change to 3 when ready to add this
	//text="DETAILS"
	if instance_exists(restar) {
		if restar.deet=1 {
			restar.deet=2
		restar.falling=-1
		} else {
			if restar.deet=0 {
		restar.deet=1
		restar.falling=-1
			}
		}
	}
}
}
}
} else {
	with (obj_summarybutton) {
	instance_destroy()
	}
}
