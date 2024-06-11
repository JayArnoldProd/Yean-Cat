/// @description Insert description here
// You can wite your code in this editor
if shownmessage=1 {

} else {
	var video_data = video_draw();
var video_status = video_data[0];
var surf = video_data[1];
//make stretchnear end
if (video_status == 0) {
	var vidalph = 1-(clamp(video_get_position()/video_get_duration(),.99,1)+.01-1)*10
	var vidstretch= (clamp(video_get_position()/video_get_duration(),.98,1)+.02-1)*5
    draw_surface_stretched_ext(surf, room_width/4, room_height/4-60-vidstretch*60, display_get_gui_width()*1.42, display_get_gui_height()*1.6*(1+vidstretch/10),c_white,vidalph);
draw_set_font(Font5)
draw_set_color(c_black)
var strt = string(round(video_get_position()))+"/"+string(round(video_get_duration()))
//draw_text(room_width/2+3,room_height/2-1,strt)
//draw_text(room_width/2+1,room_height/2-3,strt)
//draw_text(room_width/2-3,room_height/2+1,strt)
//draw_text(room_width/2-1,room_height/2+3,strt)
//draw_set_color(c_white)
//draw_text(room_width/2,room_height/2,strt)

}
}




