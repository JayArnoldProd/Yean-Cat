///Create Event of obj_terrain
systemposition=0
//-5 to 5 = earth
travelspeed=0
backgroundcolor=make_color_hsv(171, 198, 116)
//planets 0location, 1size, 2gravity, 3background, 4clouds, 5skycolor1, 6skycolor2, 7tileid,8distance,9planetimage,10gradient,11gradscale,12gradalph,13grassindex,14-18period,19-23amplitude,24backgroundscale,25cloud2,26constellation, 27 terrainheight 28 been to?
c_skyblue=make_color_hsv(134, 208, 255)
c_spaceblack=make_color_hsv(171, 198, 116)
col1=c_skyblue
col2=c_spaceblack
planet=0
d2plan=0
planets=[
[0,10,5,spr_hills,spr_clouds,c_skyblue,c_spaceblack,0,0,spr_earth,c_blue,.5,.75,0,.1,1,.66,.15,.07,.3,.36,.66,.25,.1,1,spr_clouds,spr_starfieldbase,100,0],
[15,11,6,spr_campus,spr_gradcloud,c_skyblue,c_black,0,15,spr_graduationstation,c_skyblue,.75,1,0,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100,0],
[40,13,7,spr_fantasiaback,spr_fantasiacloud,c_maroon,c_purple,0,40,spr_fantasia,c_purple,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_fantasiacloud,spr_starfieldbase,100,0],
[60,12,8,spr_landoflucyback,spr_clouds,c_skyblue,c_aqua,0,60,spr_landoflucy,c_aqua,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100,0],
[80,14,10,spr_placeofpabloback,spr_goldcloud,c_aqua,c_black,0,80,spr_placeofpablo,c_yellow,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100,0],
[100,16,12,spr_ghosttownback,spr_ghostcloud,c_purple,c_green,0,100,spr_ghosttown,c_green,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_ghostcloud,spr_starfieldbase,100,0],
[145,15,15,spr_vulturevalleyback,spr_goldcloud,c_gray,c_black,0,145,spr_vulturevalley,c_orange,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100,0],
[180,20,30,spr_theendondaback,spr_endondacloud,c_purple,c_white,0,180,spr_theendonda,c_red,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_endondacloud,spr_starfieldbase,100,0],
[245,17,20,spr_stormysandsback,spr_stormysandcloud,c_orange,c_black,0,115,spr_stormysands,c_black,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_stormysandcloud,spr_starfieldbase,100,0],
[270,14,15,spr_divinedomainback,spr_goldcloud,c_aqua,c_black,0,90,spr_divinedomain,c_white,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100,0],
[290,13,12,spr_yetopiaback,spr_goldcloud,c_black,c_dkgrey,0,70,spr_yetopia,c_red,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100,0],
[310,12,10,spr_kingdomback,spr_goldcloud,c_teal,c_skyblue,0,50,spr_kingdom,c_skyblue,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100,0],
[330,8,3,spr_icyback,spr_throwaway,c_black,c_skyblue,0,30,spr_icyheart,c_teal,.75,1,3,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_icycloud,spr_starfieldbase,100,0],
[345,11,9,spr_goldbg,spr_goldcloud,c_yellow,c_black,0,15,spr_goldmines,c_orange,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100,0]
]

//0 Name, 1: owned by clan? (-1 for no, otherwise Clan ID), 2:Clan Name "" means none, 3:Rename? ("" means no)
planet_names=[
["Earth",-1,"",""],
["Universe City",-1,"",""],
["Fantasia",-1,"",""],
["Land of Lucy",-1,"",""],
["Place of Pablo",-1,"",""],
["Ghost Town",-1,"",""],
["Vultures' Valley",-1,"",""],
["The Endonda",-1,"",""],
["Stormy Sands",-1,"",""],
["Divine Domain",-1,"",""],
["Yetopia",-1,"",""],
["King's Kingdom",-1,"",""],
["The Icy Heart",-1,"",""],
["The Gold Mines",-1,"",""]
]

planetblend=0

//create
f1=1
f2=1
f3=1
f4=1
f5=1
f6=1
f7=1
f8=1
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

boostfreq=0
boostfreq=(.5-abs(clamp(playeraltitude,0,40000)/(40000)-.5))*200