/// @description Insert description here
// You can write your code in this editor
_sw = 1536//sprite_get_width(spr_blackbox);
_sh = 512//sprite_get_height(spr_blackbox);
//spr=spr
_spr=spr_throwaway
sf=0
spr_create=true
if os_type!=os_ios and os_type!=os_android {
_surf = surface_create(_sw, _sh);
}
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

splash=[
"YEAN CAT"
]
splashchoice=0
chosensplash="YEAN CAT"
splashtime=0
splashangle=0
splashalpha=0