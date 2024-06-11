/// @description Insert description here
// You can write your code in this editor
if draw=true {
if image_xscale>0 {
draw_sprite_ext(sprite_index,2,x,y,image_xscale,image_yscale,bodyangle+legangle-30,col,alph)
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,bodyangle-legangle+30,col,alph)
} else {
	draw_sprite_ext(sprite_index,2,x,y,image_xscale,image_yscale,bodyangle-legangle+30,col,alph)
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,bodyangle+legangle-30,col,alph)
}
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,bodyangle,col,alph)

}
//draw_set_alpha(1);
//draw_set_font(Font4)
//draw_set_color(c_white);
//draw_text(x,y-100,"V: "+string(vdist));
//draw_text(x,y-50,"H: "+string(hdist));