/// @description Insert description here
// You can write your code in this editor
if instance_exists(master) {
if master.stemplay=1 {
	draw_sprite_ext(spr_musiclines,0,camera_get_view_x(master.cam)+1920*(1-lineload/100)*master.camscale,camera_get_view_y(master.cam),1*master.camscale,1*master.camscale,0,c_white,1)
}
}