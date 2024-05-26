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

if master.collection[itemidd,2]=0 {
	master.collection[itemidd,2]=2
	master.collection[itemidd,7]=-2
}

if master.collection[itemidd,2]=1 {
	master.collection[itemidd,2]=2
	master.collection[itemidd,7]=-2
}

master.collection[itemidd,2]+=1;
if master.collection[itemidd,3]>0 {
	if master.collection[itemidd,2]>=master.collection[itemidd,3] {
		if master.collection[master.collection[itemidd,12],0]=0 {
	master.collection[master.collection[itemidd,12],0]=1
	master.collection[master.collection[itemidd,12],7]=-1
	master.itemsload[master.collection[itemidd,12],2]=1
		}
	}
	
}

}
{
	instance_destroy()
}

