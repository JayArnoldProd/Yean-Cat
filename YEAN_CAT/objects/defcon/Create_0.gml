/// @description Insert description here
// You can write your code in this editor
image_speed=0
frame=0
rateset=round(4+random(4))
rate=rateset
anicount=0
scale=1
image_xscale=scale*.5
image_yscale=scale*.5
vspeedset=3
hspeedset=3
_vspeed=0
_hspeed=0
varispeed=1
variant=1
potent=1
itemidd=-1
pathh=[
[x,y],
[room_width/2-random(1920*.4),room_height/2-random(1080*.4)],
[room_width/2+random(1920*.4),room_height/2-random(1080*.4)],
[room_width/2-random(1920*.4),room_height/2+random(1080*.4)],
[room_width/2+random(1920*.4),room_height/2+random(1080*.4)],
[room_width-x,room_height-y]
]
pathid=0

