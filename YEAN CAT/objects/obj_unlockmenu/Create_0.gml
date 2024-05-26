

/// @description Insert description here
// You can write your code in this editor
effecttext= ""
flairtxt= ""
totalgrade=0;
alp=0
gro=1.3
slidecollect=0
distomake=0
col=c_white
onscreen=-1
checkcount=1
image_speed=0
seld=0
seldd=0
colsel=-1
time=0
overr=-1
image_xscale=2.2
image_yscale=1.8
freezescroll=0
unseen=0
unlockani=0
c_lock=c_white
menuselect=0
menuselectt=0
taskselect=0
taskselectvalue=0
collectscrollvalue=0
examcol=-1
swapcol=0
colswapx=display_get_gui_width()
swapmenu=0
swapx=display_get_gui_width()
taskimage=spr_throwaway
imagenum=0
slidingtasks=0
rewardtype=""
taskselectt=0
taskcount=0
taskcount2=0
taskcount3=0
lockssnd = audio_play_sound(nothingsound,0,0);
//sorting 0=all, 1=hidecompleted
anicount=0
aniccount=0
sorting=0
sortingcol=0
taskhov=0
updatesel=0
dfade=0
countgrade=-1
selected=-1;
slide=0
refcount=0
//distplay=-21.5
//distplay2=8
//distplay3=-5
//distplay4=-1.5
//distplay5=-2.5
//distplay6=-1.5
//distplay7=-8.5
//distplay8=-1.75
//distplay9=2.5
//distplay0=0

//refunding=0

//instance_create_layer(x,y-382,"uiitop",obj_buyupgrade);
//instance_create_layer(x,y+422,"uiitop",obj_refund);

//for (i=0; i<array_length(upgrades); i++) {
//	if upgrades[i,6]=0 {
//		upgrades[i,2] = -1
//	}
//	if upgrades[i,6]=1 {
//		countgrade+=1

slid = instance_create_layer(x,y,"uiitop",obj_slidervert)
slid.typee=1
slid.lengthh=400

slid2 = instance_create_layer(x,y,"uiitop",obj_slidervert)
slid2.typee=2
slid2.lengthh=600
		var task = instance_create_layer(x,y,"uiitop",obj_tasksbutton)
var coll = instance_create_layer(x,y,"uiitop",obj_collectionbutton)
//		
var sho = instance_create_layer(x,y,"uiitop",obj_shopbutton)

var ch1=instance_create_layer(room_width, room_height/2+200, "uiitop", obj_checkboxunlock);
ch1.abcd=0

var ch2=instance_create_layer(room_width, room_height/2+200, "uiitop", obj_checkboxcollect);
ch2.abcd=0


//		

//		upp.ind=countgrade
//		upp.idd=i
//		upp.corid=upgrades[i,5]
//		upp.imag=upgrades[i,3]
//		upp.maxx=upgrades[i,2]
//		upp.lev=upgrades[i,1]
//		upp.lock=upgrades[i,0]
//	}
	
//}

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