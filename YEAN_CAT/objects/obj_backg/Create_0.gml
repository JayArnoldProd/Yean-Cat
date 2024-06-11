/// create obj_backg
//
pht=0
travelspeed=0

planet=0
d2plan=0
planrot=0
slideplanet=800
c_skyblue=make_color_hsv(134, 208, 255)
c_spaceblack=make_color_hsv(171, 198, 116)
backgroundcolor=c_spaceblack
systemposition=0
planets=[
[0,10,5,spr_hills,spr_clouds,c_skyblue,c_spaceblack,0,0,spr_earth,c_blue,.5,.75,0,.1,1,.66,.15,.07,.3,.36,.66,.25,.1,1,spr_clouds,spr_starfieldbase,100],
[15,11,6,spr_campus,spr_gradcloud,c_skyblue,c_black,0,15,spr_graduationstation,c_skyblue,.75,1,0,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100],
[40,13,7,spr_fantasiaback,spr_fantasiacloud,c_maroon,c_purple,0,40,spr_fantasia,c_purple,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_fantasiacloud,spr_starfieldbase,100],
[60,12,8,spr_landoflucyback,spr_clouds,c_skyblue,c_aqua,0,60,spr_landoflucy,c_aqua,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100],
[80,14,10,spr_placeofpabloback,spr_goldcloud,c_aqua,c_black,0,80,spr_placeofpablo,c_yellow,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100],
[100,16,12,spr_ghosttownback,spr_ghostcloud,c_purple,c_green,0,100,spr_ghosttown,c_green,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_ghostcloud,spr_starfieldbase,100],
[145,15,15,spr_vulturevalleyback,spr_goldcloud,c_gray,c_black,0,145,spr_vulturevalley,c_orange,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100],
[180,20,30,spr_theendondaback,spr_endondacloud,c_purple,c_white,0,180,spr_theendonda,c_red,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_endondacloud,spr_starfieldbase,100],
[245,17,20,spr_stormysandsback,spr_stormysandcloud,c_orange,c_black,0,115,spr_stormysands,c_black,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_stormysandcloud,spr_starfieldbase,100],
[270,14,15,spr_divinedomainback,spr_goldcloud,c_aqua,c_black,0,90,spr_divinedomain,c_white,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100],
[290,13,12,spr_yetopiaback,spr_goldcloud,c_black,c_dkgrey,0,70,spr_yetopia,c_red,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100],
[310,12,10,spr_kingdomback,spr_goldcloud,c_teal,c_skyblue,0,50,spr_kingdom,c_skyblue,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100],
[330,8,3,spr_icyback,spr_throwaway,c_black,c_skyblue,0,30,spr_icyheart,c_teal,.75,1,3,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_icycloud,spr_starfieldbase,100],
[345,11,9,spr_goldbg,spr_goldcloud,c_yellow,c_black,0,15,spr_goldmines,c_orange,.75,1,1,19,41,7,.5,3,.6,1.6,.3,.1,.5,1,spr_clouds,spr_starfieldbase,100]
]
playeraltitude=0
playerpos=0
player_height_fromground=0
fadein=1
alph=1
lalph=0
rainbowh=0
rainbowv=0
rainbowh2=0
rainbowv2=0
osc=0
time=0
shift=0
back1scale=4
back2scale=50
back=spr_starfieldbase
back2=spr_starfieldbase2
_sw = sprite_get_width(spr_starfieldbase);
_sh = sprite_get_height(spr_starfieldbase);
_sw2 = sprite_get_width(spr_starfieldbase2);
_sh2 = sprite_get_height(spr_starfieldbase2);
boost=0