/// @function scr_slider_cluster
/// @description Spawns a cluster of sliders
/// @param {array} options_pick - Array that holds which options to spawn
/// @param {real} offset_x - x offset
/// @param {real} offset_y - y offset
/// @param {real} slider_dir - 0horizontal or 1vertical
/// @param {real} lengthh - length of sliders
/// @param {real} spacingg - spacing between sliders
/// @param {bool} - does it follow the menu?
function scr_slider_cluster(options_pick, offset_x, offset_y, slider_dir, lengthh, spacingg, menu){
slider_dir=round(clamp(slider_dir,0,1))
for (i=0; i<array_length(options_pick); i++) {
		var sli=instance_create_layer(room_width+offset_x+(slider_dir)*(spacingg*i*(6/array_length(master.optionarray))), room_height/2+offset_y+(abs(slider_dir-1))*(spacingg*i*(6/array_length(master.optionarray))), "uiitop", obj_slider);
		if master.optionarray[options_pick[i],0]!="uiscale" {
		sli.valuee=variable_instance_get(master.optionarray[options_pick[i],2],master.optionarray[options_pick[i],0])
		} else {
			sli.valuee=(variable_instance_get(master.optionarray[options_pick[i],2],master.optionarray[options_pick[i],0])-.5)*2
		}
		sli.varname=master.optionarray[options_pick[i],0]
		sli.typee=master.optionarray[options_pick[i],2]
		sli.offset_y=offset_y
		sli.offset_x=offset_x
		sli.lengthh=lengthh
		sli.textt=master.optionarray[options_pick[i],1]
		sli.iii=options_pick[i]
		sli.dir=slider_dir
		sli.menu=menu
}

}