/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font2);
draw_set_color(c_black)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*xstretch,image_yscale*ystretch,0,col,fade)
var buttext= "+1 Weapon Slot\n"+"("+string(master.maxweapset)+")"
if master.maxweapset >= 6 {
	ystretch=1.5
buttext = "+1 Weapon Slot\nMAXED ("+string(master.maxweapset)+")"
} else {
	ystretch=1.3
}
draw_set_valign(fa_center);

draw_text_bold(buttext,x,y,10,Font2,c_black,c_white)
if master.maxweapset < 6 {
draw_sprite_ext(spr_dondadollar,image_index,x,y+130,image_xscale/1.9,image_yscale/1.9,0,c_black,fade)
draw_sprite_ext(spr_dondadollar,image_index,x,y+130,image_xscale/2,image_yscale/2,0,c_white,fade)

draw_text_bold("$"+string(cost),x,y+130,10,Font2,c_black,c_white)
//draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-1+y+210+15*(0.5 * sin(2 * pi/2 * time / 5)),"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),.5+(0.5 * sin(2 * pi * time / 5) + 0.5)/20,.5+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/20,0,c_red,c_aqua,c_lime,c_purple,.5*fade)
//draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),1+y+210+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),.5+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/20,.5+(0.5 * sin(2 * pi * time / 5) + 0.5)/20,0,c_blue,c_orange,c_yellow,c_green,.5*fade)
//draw_text_transformed_color(x-6,y+210,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),.511+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/19,.511+(0.5 * sin(1 * pi * time / 5) + 0.5)/19,0,c_black,c_black,c_black,c_black,.9*fade)
//draw_text_transformed_color(x,y-6+210,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),.511+(0.5 * sin(2 * pi * time / 5) + 0.5)/19,.511+(0.5 * sin(2 * pi * time / 5) + 0.5)/19,0,c_black,c_black,c_black,c_black,.9*fade)
//draw_text_transformed_color(x+6,y+210,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),.511+(0.5 * sin(1 * pi * time / 5) + 0.5)/19,.511+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/19,0,c_black,c_black,c_black,c_black,.9*fade)
//draw_text_transformed_color(x,y+210,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),.499+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/20,.499+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/20,0,c_white,c_white,c_white,c_white,1*fade)

}
