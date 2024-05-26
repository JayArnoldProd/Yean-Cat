/// @description Insert description here
// You can write your code in this editor

if instance_exists(yeancat) {
	with (master) {
//audio_stop_sound(soundscream)
//soundscream = audio_play_sound(defconscream,1,0);
	}
	if yeancat.oxy<=variant {
yeancat.oxy=clamp(variant*master.pickuppotency,1,5)
yeancat.healthh=yeancat.healthh+(yeancat.maxhealth-yeancat.healthh)*(variant)/5
yeancat.oxydamage=(1+.25*variant)*master.pickuppotency
yeancat.oxyspeed=(1+.1*variant)*master.pickuppotency
yeancat.oxyresistance=clamp((.5*variant/5)*master.pickuppotency,0,1)
yeancat.oxyrate=(1+.25*variant)*master.pickuppotency

	}
if itemidd!=-1 {
master.items[itemidd,3]=1;

if master.collection[itemidd,1]=0 {
	if master.collection[itemidd,12] != -1 {
	if master.collection[master.collection[itemidd,12],1]<1 {
		master.collection[master.collection[itemidd,12],1]=1
	}
}
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
{
	instance_destroy()
}
}
