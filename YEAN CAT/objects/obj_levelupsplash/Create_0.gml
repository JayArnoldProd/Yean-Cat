/// @description Insert description here
// You can write your code in this editor
FontRage = font_add("Road_Rage.otf",40*master.camscale,0,0,32,128)
font_enable_sdf(FontRage,1);
stay=0
lev=0
txt=""
sped=5.5
alph=0
fade=0
font_enable_effects(FontRage, true, {
    outlineEnable: true,
    outlineDistance: 2,
    outlineColour: c_black
});

font_enable_effects(FontRage, true, {
    glowEnable: true,
    glowEnd: 16,
    glowColour: c_red
});