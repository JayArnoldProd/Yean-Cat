/// @description Insert description here
// You can write your code in this editor
other.healthh+=1.5*scale*1.5*potent*master.pickuppotency
with (other) {
var chomp=audio_play_sound(eatsound,0,0);
audio_sound_gain(chomp,.6*master.mastervol*master.sfxvol, 0);
}
//collectibles
//name,1state, 2amount collected, 3amount til next,4enabled,5upgradeprice,6level,7seen,i8mage, 9can disable, 10item id, 11image_index, 12unlocks what, 13 requirement(s) 14text color, 15object type, 16 rarity, 17variant, 18 good or bad
//state: 0 =locked, 1=unlocked, 2=obtained.
//type //type: 0=character, 1=weapon, 2=passive, 3=item, 4=healing, 5=boost, 6=music, 7=collectible, 8=other,9=currency, 10=equipable, 11=drug, 12=questitem

if itemidd!=-1 {
master.items[itemidd,3]=1;
if master.collection[itemidd,12] != -1 {
	if master.collection[master.collection[itemidd,12],1]<1 {
		master.collection[master.collection[itemidd,12],1]=1
	}
}

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
{
	instance_destroy()
}

