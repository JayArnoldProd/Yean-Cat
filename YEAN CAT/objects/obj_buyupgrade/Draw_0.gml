/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font3);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*1.1,image_yscale,0,col,fade)
var buttext= "LEVEL UP"
if instance_exists(obj_upgrademenu) {
if obj_upgrademenu.selected != -1 {
if master.notice[obj_upgrademenu.selected,2] >= master.notice[obj_upgrademenu.selected,3] {
buttext = "MAXED"
}
}
}
draw_set_valign(fa_center);
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y+15*(0.5 * sin(2 * pi/2 * time / 5)),buttext,.5+(0.5 * sin(2 * pi * time / 5) + 0.5)/20,.5+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/20,0,c_red,c_aqua,c_lime,c_purple,.5*fade)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),buttext,.5+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/20,.5+(0.5 * sin(2 * pi * time / 5) + 0.5)/20,0,c_blue,c_orange,c_yellow,c_green,.5*fade)
draw_text_transformed_color(x-6,y,buttext,.511+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/19,.511+(0.5 * sin(1 * pi * time / 5) + 0.5)/19,0,c_black,c_black,c_black,c_black,.9*fade)
draw_text_transformed_color(x,y-6,buttext,.511+(0.5 * sin(2 * pi * time / 5) + 0.5)/19,.511+(0.5 * sin(2 * pi * time / 5) + 0.5)/19,0,c_black,c_black,c_black,c_black,.9*fade)
draw_text_transformed_color(x+6,y,buttext,.511+(0.5 * sin(1 * pi * time / 5) + 0.5)/19,.511+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/19,0,c_black,c_black,c_black,c_black,.9*fade)
draw_text_transformed_color(x,y,buttext,.499+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/20,.499+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/20,0,c_white,c_white,c_white,c_white,1*fade)
if instance_exists(obj_upgrademenu) {
if obj_upgrademenu.selected != -1 {
if obj_upgrademenu.upgrades[obj_upgrademenu.selected,1] < obj_upgrademenu.upgrades[obj_upgrademenu.selected,2] {
draw_sprite_ext(spr_dondadollar,image_index,x,y+110,image_xscale/1.9,image_yscale/1.9,0,c_black,fade)
draw_sprite_ext(spr_dondadollar,image_index,x,y+110,image_xscale/2,image_yscale/2,0,c_white,fade)

draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-1+y+110+15*(0.5 * sin(2 * pi/2 * time / 5)),"$"+string(cost),.5+(0.5 * sin(2 * pi * time / 5) + 0.5)/20,.5+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/20,0,c_red,c_aqua,c_lime,c_purple,.5*fade)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),1+y+110+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),"$"+string(cost),.5+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/20,.5+(0.5 * sin(2 * pi * time / 5) + 0.5)/20,0,c_blue,c_orange,c_yellow,c_green,.5*fade)
draw_text_transformed_color(x-6,y+110,"$"+string(cost),.511+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/19,.511+(0.5 * sin(1 * pi * time / 5) + 0.5)/19,0,c_black,c_black,c_black,c_black,.9*fade)
draw_text_transformed_color(x,y-6+110,"$"+string(cost),.511+(0.5 * sin(2 * pi * time / 5) + 0.5)/19,.511+(0.5 * sin(2 * pi * time / 5) + 0.5)/19,0,c_black,c_black,c_black,c_black,.9*fade)
draw_text_transformed_color(x+6,y+110,"$"+string(cost),.511+(0.5 * sin(1 * pi * time / 5) + 0.5)/19,.511+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/19,0,c_black,c_black,c_black,c_black,.9*fade)
draw_text_transformed_color(x,y+110,"$"+string(cost),.499+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/20,.499+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/20,0,c_white,c_white,c_white,c_white,1*fade)

//draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-1+y+210+15*(0.5 * sin(2 * pi/2 * time / 5)),"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),.5+(0.5 * sin(2 * pi * time / 5) + 0.5)/20,.5+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/20,0,c_red,c_aqua,c_lime,c_purple,.5*fade)
//draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),1+y+210+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),.5+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/20,.5+(0.5 * sin(2 * pi * time / 5) + 0.5)/20,0,c_blue,c_orange,c_yellow,c_green,.5*fade)
//draw_text_transformed_color(x-6,y+210,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),.511+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/19,.511+(0.5 * sin(1 * pi * time / 5) + 0.5)/19,0,c_black,c_black,c_black,c_black,.9*fade)
//draw_text_transformed_color(x,y-6+210,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),.511+(0.5 * sin(2 * pi * time / 5) + 0.5)/19,.511+(0.5 * sin(2 * pi * time / 5) + 0.5)/19,0,c_black,c_black,c_black,c_black,.9*fade)
//draw_text_transformed_color(x+6,y+210,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),.511+(0.5 * sin(1 * pi * time / 5) + 0.5)/19,.511+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/19,0,c_black,c_black,c_black,c_black,.9*fade)
//draw_text_transformed_color(x,y+210,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),.499+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/20,.499+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/20,0,c_white,c_white,c_white,c_white,1*fade)


}
}
}
