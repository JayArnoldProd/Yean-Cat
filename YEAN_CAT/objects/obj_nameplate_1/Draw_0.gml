/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white)
if instance_exists(playercreate) {
if string_length(playercreate.name)<15 {
draw_set_font(fnt_adventuringlarge);
} else if string_length(playercreate.name)<25 {
draw_set_font(fnt_adventuring2);
} else {
draw_set_font(fnt_adventuring3);
}
draw_text(x,y,playercreate.name+endstring);
}