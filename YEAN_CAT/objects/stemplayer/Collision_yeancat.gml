/// @description Insert description here
// You can write your code in this editor
	if master.donda3=1 {
	
	with (master) {
	stemplay=1
	stemtime=60
	drumvol=1
bassvol=1
melodyvol=1
vocalvol=1
	}
	
} else {
	master.dondaunlocked=1
}
if itemidd!=-1 {
master.items[itemidd,3]=1;
}

{
	instance_destroy()
}