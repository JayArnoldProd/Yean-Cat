/// @description Insert description here
// You can write your code in this editor

if instance_exists(master) {
if master.record=1 {
if master.stemplay=1 {
var wt=instance_create_layer(room_width/2+1920/2*master.camscale,room_height/2+250*master.camscale/2,"player",whitebar);
wt.typee=2
wt.rec=1
lastnote=wt
recdrums=1
lastkey=2
}
}
}
