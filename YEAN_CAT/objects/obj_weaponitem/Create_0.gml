/// @description Insert description here
// You can write your code in this editor
variant=0
image_speed=0
varispeed=1
osc=0
itemidd=-1
collect=0
good=0
moves=0
good=0
_vspeed=0
_hspeed=0
vspeedset=0
hspeedset=0

slowness=100
flying=0
pathh=[
[x,y],
[room_width/2-random(1920*.2)*master.camscale,room_height/2-random(1080*.2)*master.camscale],
[room_width/2+random(1920*.2)*master.camscale,room_height/2-random(1080*.2)*master.camscale],
[room_width/2-random(1920*.2)*master.camscale,room_height/2+random(1080*.2)*master.camscale],
[room_width/2+random(1920*.2)*master.camscale,room_height/2+random(1080*.2)*master.camscale],
[room_width-x,room_height-y]
]
pathid=0
poss=0
space=0
planett=-1
if x<room_width/2 {
	_hspeed=8
} else {
	_hspeed=-8
}