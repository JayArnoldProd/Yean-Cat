/// @description Insert description here
// You can write your code in this editor
damage=0
size=1
crit=0
sett=0
durset=1.5
dur=durset*1000000
targ=noone
randshift=random(5)/1000
ran=0
alph=0
on=1 
c1a=[0,round(random(1))*255,round(random(1))*255]
c2a=[0,c1a[1],255-c1a[1]]
c3a=[0,255-c1a[1],c1a[1]]
c4a=[0,255-c1a[1],255-c1a[1]]
c5a=[0,0,255]
c_pos=c_red
postring=""
merc=0;
time=0
newtime=0

c1=make_color_hsv(c1a[0],c1a[1],c1a[2])
c2=make_color_hsv(c2a[0],c2a[1],c2a[2])
c3=make_color_hsv(c3a[0],c3a[1],c3a[2])
c4=make_color_hsv(c4a[0],c4a[1],c4a[2])
c5=make_color_hsv(c5a[0],c5a[1],c5a[2])