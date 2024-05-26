/// @description Insert description here
// You can write your code in this editor
//debug
if master.record=1 {
draw_set_color(c_white)
draw_text(70,10,string(framee));
draw_text(300,10,string(array_length(trackk)));
if audio_sync_group_is_playing(master.sg) {
draw_text(500,10,string(audio_sync_group_get_track_pos(master.sound1)));
}
}