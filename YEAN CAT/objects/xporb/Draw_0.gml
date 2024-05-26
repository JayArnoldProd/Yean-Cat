/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,x,y+5*((10+xpvalue)/11)*(1 * sin(1 * pi * (time*1.1) / 50)-.5),image_xscale*1.3,image_yscale*1.3,-time,c_white,1)
draw_sprite_ext(sprite_index,image_index,x,y+5*((10+xpvalue)/11)*(1 * sin(1 * pi * (time*1.1) / 50)-.5),image_xscale,image_yscale,time,col,1)

//draw_text(x,y-100,"HEIGHT"+string(bullet_height_fromground))
//draw_text(x,y-150,"OG"+string(onground))
//draw_text(x,y-200,"CLOP"+string(((600-obj_terrain.lowercloud)/600)))