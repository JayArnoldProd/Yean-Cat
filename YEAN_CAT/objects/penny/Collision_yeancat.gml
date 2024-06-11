/// @description Insert description here
// You can write your code in this editor
if itemidd!=-1 {
	if instance_exists(yeancat) {
	with (yeancat) {
audio_stop_sound(soundxtra)
soundxtra = audio_play_sound_on(s_emit,pennyhitsound,0,0);
if master.charselect !=0 {
	//mute scream
	//replace this with individual sounds for each character
	audio_sound_gain(soundxtra,0,0);
}
	}
	}
	
master.items[itemidd,3]=1;

if master.collection[itemidd,1]=0 {
	master.collection[itemidd,1]=2
	master.collection[itemidd,7]=-2
	//types 0=none,1 =task, 2=achievement, 3=collection, 4=tip, 5=other, 6=coop request

		var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=3
						//set to complete
						noti.desc2=master.collectiontext[itemidd,3]
						noti.reward=3
						noti.namee="New Item Collected"
						noti.namee2=master.collection[itemidd,0]+" Discovered"
						noti.desc=master.collectiontext[itemidd,2]		
						noti.image=master.collection[itemidd,8]
						noti.imageind=master.collection[itemidd,11]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.clickable=1
						noti.relativeid=itemidd
}

if master.collection[itemidd,1]=1 {
	var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=3
						//set to complete
						noti.desc2=master.collectiontext[itemidd,3]
						noti.reward=3
						noti.namee=master.collectiontext[itemidd,2]
						noti.namee2="New Item Collected"
						noti.desc=master.collection[itemidd,0]+" Discovered"
						noti.image=master.collection[itemidd,8]
						noti.imageind=master.collection[itemidd,11]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.clickable=1
						noti.relativeid=itemidd
	master.collection[itemidd,2]=2
	master.collection[itemidd,7]=-2
}

master.collection[itemidd,2]+=1;
if master.collection[itemidd,3]>0 {
	if master.collection[itemidd,2]>=master.collection[itemidd,3] {
		if master.collection[master.collection[itemidd,12],0]=0 {
	master.collection[master.collection[itemidd,12],0]=1
	master.collection[master.collection[itemidd,12],19]=1
	master.collection[master.collection[itemidd,12],7]=-1
	//master.itemsload[master.collection[itemidd,12],2]=1
	//master.items[master.collection[itemidd,12],2]=1
	//master.collection[master.collection[itemidd,12],4]=1
		var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=3
						//set to complete
						noti.desc2=master.collectiontext[master.collection[itemidd,12],3]
						noti.reward=3
						noti.namee=master.collectiontext[master.collection[itemidd,12],2]
						noti.namee2="New Item Unlocked"
						noti.desc=master.collection[master.collection[itemidd,12],0]+" Discovered"
						noti.image=master.collection[master.collection[itemidd,12],8]
						noti.imageind=master.collection[master.collection[itemidd,12],11]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.clickable=1
						noti.relativeid=master.collection[itemidd,12]
	master.collection[master.collection[itemidd,12],2]=2
	master.collection[master.collection[itemidd,12],7]=-2
		}
	}
	
}

}

if instance_exists(yeancat) {
	if other.invincible=0 {
if missed=0 {
	if grabbed=0 and frozen = 0 {
//if random(1000)>(master.champion*1000) {
var ddd = damage*(1*(1-master.resistance))*(1-yeancat.oxyresistance)*(1-yeancat.stemresistance)
other.healthh-=ddd
master.dondadollars+=.01
master.dondadollarsprevious=master.dondadollars
master.centfade=0;
if master.heartbreak>0 {
	var split=0
	if instance_exists(yeancat) {
	for (var _i=0; _i<instance_number(enemy);_i++) {
				 var _inst = instance_find(enemy, _i);
				 if point_distance(_inst.x,_inst.y,yeancat.x,yeancat.y)<(100*master.range*(1+(.05*master.passives[10,3])*master.einstein+master.lheartbreak)) {
				split+=1
				}
			}
	if split>0 {
	with (enemy) {
		
		if point_distance(x,y,yeancat.x,yeancat.y)<(100*master.range*(1+(.05*master.passives[10,3])*master.einstein+master.lheartbreak)) {
	
		healthh-=ddd*master.heartbreak*yeancat.oxydamage*yeancat.stemdamage/split*(1*(1-resistance))
		if master.faith > 0 {
			yeancat.healthh+=(master.faith*ddd*master.heartbreak*yeancat.oxydamage*yeancat.stemdamage/split)*(1*(1-resistance))
		}
		}
	}
	
	yeancat.breakheart=1
	}
	}
}
other.redcount[0]=1

var hur1 = master.charsounds[master.charselect,0]
var hur2 = master.charsounds[master.charselect,1]
var hur3 = master.charsounds[master.charselect,2]


var hit = round(random(2))
var hurt = round(random(2))
with (other) {
if hit = 0 {
	hurtsnd2=audio_play_sound_on(s_emit,hurt1,0,0);
}
if hit = 1 {
	hurtsnd2=audio_play_sound_on(s_emit,hurt2,0,0);
}
if hit = 2 {
	hurtsnd2=audio_play_sound_on(s_emit,hurt3,0,0);
}
if hurt = 0{
	hurtsnd=audio_play_sound_on(s_emit,hur1,0,0);
}
if hurt = 1 {
	hurtsnd=audio_play_sound_on(s_emit,hur2,0,0);
}
if hurt = 2 {
	hurtsnd=audio_play_sound_on(s_emit,hur3,0,0);
}
}
{
	instance_destroy()
}
//} else {
//	if grabbed=0 and frozen = 0{
//	yeancat.dodge=1;
//	missed=1
//	}
}
}
	}
}