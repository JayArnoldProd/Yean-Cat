/// @description Insert description here
// You can write your code in this editor
save_track=0
framelock=0
lineload=0
framerate=15
recbeat=0
recdrums=0
recbass=0
recvocal=0
recmelody=0
reclyric=0;
lhold=0
llast=0;
lcount=0;
framee=0
lastkey=0
i=0
lyrics=[
"It's Jay Arnold",
"Since a kid\nI used to hear the stories",
"Of the man\n2000 years \nbefore me."
]

lastnote=noone
lastnote1=noone
lastnote2=noone
lastnote3=noone
lastnote4=noone
//delta_second = 1000000/framerate;
loadedtrack=[
[0,0,0,0,0,0,"",0],
[0,0,0,0,0,0,"",0]
];
trackk= [
[0,0,0,0,0,0,"",0],
[0,0,0,0,0,0,"",0]
];
frameprev=-1
//global.pause=1

if os_type=os_ios or os_type=os_android {

} else {
scr_loadtrack();
}
