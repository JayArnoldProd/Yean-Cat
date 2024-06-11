///create of flash

image_speed=0
frame=0
image_index=0
framerateset=4
framerate=framerateset
damage=2
parent=noone
siz=2+random(10)/20
dir=0
alphaa=1
owner=noone
sndmanid=0
if instance_exists(enemy) {
sndmanid=instance_nearest(x,y,enemy).sndmanid
}