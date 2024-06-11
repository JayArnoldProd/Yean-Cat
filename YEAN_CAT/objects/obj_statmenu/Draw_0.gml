/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(alp);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,0);
draw_set_halign(fa_center);
draw_set_valign(fa_top);


draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,.7);

draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_font(Font5);
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-575+15*(0.5 * sin(2 * pi/2 * time / 5)),"STATS",2+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,2+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,0,c_red,c_aqua,c_lime,c_purple,.5)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-575+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),"STATS",2+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15,2+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,0,c_blue,c_orange,c_yellow,c_green,.5)
draw_text_transformed_color(x-6,y-575,"STATS",1.98+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14,1.98+(0.5 * sin(1 * pi * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-6-575,"STATS",1.98+(0.5 * sin(2 * pi * time / 5) + 0.5)/14,1.98+(0.5 * sin(2 * pi * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6,y-575,"STATS",1.98+(0.5 * sin(1 * pi * time / 5) + 0.5)/14,1.98+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-575,"STATS",1.9+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,1.9+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15,0,c_white,c_white,c_white,c_white,1)
var timeplay= seconds_to_formatted_string(master.playtimegame)
var namescal=1.5-clamp(string_length(master.playername)-20,0,40)/50
var namefnt_ = master.font_array[master.name_text[0],1]
var ncol1=master.color_array[master.name_text[1],0]
var ncol2=master.color_array[master.name_text[2],0]
draw_text_bold_ext2(master.playername,x,y-340,10,namefnt_,ncol2,ncol1,1,namescal)
// Calculating player's strongest character and combined level
var hcl = 0;
var hc = 0;
var cl = 0;
for (var dd = 0; dd < array_length(master.characters); dd++) {
    if master.characters[dd, 0] = 1 {
        if master.characters[dd, 2] > hcl {
            hcl = master.characters[dd, 2];
            hc = dd;
        }
        cl += master.characters[dd, 2];
    }
}

draw_text_bold("Legacy Version: "+master.legacyversion,x,y-250,10,Font1,c_black,c_white)
draw_text_bold("PLAY TIME\n"+timeplay,x,y-50,10,Font2,c_black,c_white)
draw_text_bold("TOTAL LEVEL: "+string(cl),x,y+150,10,Font2,c_black,c_white)
draw_text_bold("KILLS\n"+string(master.overallkillsgame),x,y+300,10,Font2,c_black,c_white)
//string
//x
//y
//boldness
//font
//col1
//col2
