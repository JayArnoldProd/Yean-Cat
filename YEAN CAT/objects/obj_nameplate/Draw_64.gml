/// Draw GUI of obj_nameplate

draw_set_alpha(1);
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if nameinput=1 {
	draw_set_color(c_white)
	draw_text(room_width/2,room_height/2-25,playername+endstring)
draw_text(room_width/2,room_height/2+25,emailtext+endstring)

} else {
	draw_set_color(c_black)
	draw_text(room_width/2,room_height/2-25,playername+endstring)
draw_text(room_width/2,room_height/2+25,emailtext+endstring)
}