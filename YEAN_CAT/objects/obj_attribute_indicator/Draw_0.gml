/// @description Insert description here
// You can write your code in this editori
if global.pause=0 {

draw_set_alpha(alp)
draw_set_halign(fa_center)
draw_set_font(Font1)
draw_set_color(c_black)
draw_text_transformed(x+2,y-2,attributes[attribute_select],alp+.33*(1-secondtime/(seconds*1000000)),alp+.33*(1-secondtime/(seconds*1000000)),0)
draw_text_transformed(x-2,y-2,attributes[attribute_select],alp+.33*(1-secondtime/(seconds*1000000)),alp+.33*(1-secondtime/(seconds*1000000)),0)
draw_text_transformed(x-2,y+2,attributes[attribute_select],alp+.33*(1-secondtime/(seconds*1000000)),alp+.33*(1-secondtime/(seconds*1000000)),0)
draw_text_transformed(x+2,y+2,attributes[attribute_select],alp+.33*(1-secondtime/(seconds*1000000)),alp+.33*(1-secondtime/(seconds*1000000)),0)
draw_set_color(c_white)

draw_text_transformed(x,y,attributes[attribute_select],alp+.33*(1-secondtime/(seconds*1000000)),alp+.33*(1-secondtime/(seconds*1000000)),0)
} else {
	
}