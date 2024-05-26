/// @description Insert description here
// You can write your code in this editor

lowercloud=600
hilloffset=0
cloudoffset=0
hillx=0
cloudx=0


playerpos=0
xoffset=0
spacing=100
partcount=round(room_width/spacing)
playeraltitude=0
player_height_fromground=100
terrain = array_create(partcount+3,0)
gscale=.1*spacing/100
pfun1=.1
pfun2=1
pfun3=.66
pfun4=.15
pfun5=.07
afun1=1
afun2=.75
afun3=.66
afun4=.25
afun5=.1
maxfun=(afun1+afun2+afun3+afun4+afun5)
player_angle_onground=0

terrainheight=100
terrainheight=100
ground_yvalue_belowplayer=room_height
xx=0
yy=0