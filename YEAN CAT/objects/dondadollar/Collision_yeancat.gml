/// @description Insert description here
// You can write your code in this editor
if global.pause =1 {
	exit
} else {
	time+=1
}
if instance_exists(yeancat) {
		fly=yeancat.flying
}
var moneys = nothingsound
		var pick = 0
		{
			if valuee<100 {
				pick = choose (1,2,3,4) 
			if pick=1 {
				moneys=moneys1
			}
			if pick=2 {
				moneys=moneys2
			}
			if pick=3 {
				moneys=moneys3
			}
			if pick=4 {
				moneys=moneys4
			}
			} else {
				if valuee<1000 {
					moneys=moneys5
				} else {
					if valuee<5000 {
						moneys=moneys6
					} else {
						moneys=moneys7
					}
				}
			}
		}
		audio_play_sound_on(myEmitter,moneys,0,0,.5+.5*clamp(valuee/20000,0,.5),0,.95+random(10)/100)


master.dondadollars+=floor(valuee*master.wealth*master.swag)
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
with (self) {
	instance_destroy();
}

if x>room_width/2-1/2*room_width*master.camscale or x<room_width/2+1/2*room_width*master.camscale or y>room_height/2-room_height*1/2*master.camscale or y<room_height/2+room_height*1/2*master.camscale {		
if time > 10000 {
	instance_destroy();
}
}
