/// @description Insert description here
// You can write your code in this editor

sss=master.camscale*1.405

var inward=0
if os_type=os_ios or os_type=os_android {
	inward=10
}
if master.mainmenu=1 {
	xxx=camera_get_view_x(master.cam)+75+inward
	yyy=camera_get_view_y(master.cam)+75+inward
	hide=0
}
if instance_exists(obj_upgrademenu) or instance_exists(obj_unlockmenu) or instance_exists(obj_statmenu) or instance_exists(obj_achievments) or instance_exists(obj_levelup) or instance_exists(obj_options) or instance_exists(obj_pickupq) {
	xxx=camera_get_view_x(master.cam)+75+inward
	yyy=camera_get_view_y(master.cam)-100
	hide=1

}
if master.ti>0 or master.mainmenu=0 or instance_exists(obj_levelselect) {
	xxx=camera_get_view_x(master.cam)+75+inward
	yyy=camera_get_view_y(master.cam)-100
	hide=1
}
if x!=xxx {
	x=(x*50+xxx)/51
}
if y!=yyy {
	y=(y*50+yyy)/51
}
if scale != scalee {
	scale= (scale*20+scalee)/21
}
image_xscale=.25*scale
image_yscale=.25*scale