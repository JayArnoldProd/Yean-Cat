/// @description Insert description here
// You can write your code in this editor
////rewardtype //type: 0=character, 1=weapon, 2=passive, 3=item, 4=stage, 5=music, 6=gamemode, 7=other, 8=tip,
reward=-1
slowbow=1
fancy=1
holdshow=1.5*(1000000)
holdnum=0
//types 0=none,1 =task, 2=achievement, 3=collection, 4=tip, 5=unlock, 6=other, 7=coop request
typee=0
falling=1
namee=""
namee2=""
desc=""
image=spr_throwaway
durationset=2
duration=durationset*(1000000)
desc2=""
if instance_exists(obj_notification) {
	paus=instance_number(obj_notification)-1
} else {
	paus=0
}
load=1
clickable=0
rainpos=0
relativeid=-1

stretchin=0
bottomfade=0
topfade=0
imageind=0



_sw = 1536//sprite_get_width(spr_blackbox);
_sh = 512//sprite_get_height(spr_blackbox);
//spr=spr
_spr=spr_throwaway
sf=0
spr_create=true
//if os_type!=os_ios and os_type!=os_android {
//_surf = surface_create(_sw, _sh);
//}
draw_clear_alpha(c_black, 0);

onscreen=-1
col=c_white
colcol=0
xx=0
yy=0
rainbowh=0
rainbowv=0
offset=0
time=0
timee=0
updatee=0
timeframe=0
slide=0
splashchoice=0
chosensplash=namee
splashtime=0
splashangle=0
splashalpha=0
if master.mainmenu=0 {
master.speedgui=3
}
