/// @description Insert description here
// You can write your code in this editor
if (video_get_status() == video_status_playing) {
video_pause()
			video_close();
			audio_stop_sound(tagg)
			with (master) {
				audio_stop_sound(music)
			music=audio_play_sound(wcnyanblend,1,0)
			startmusic=1
			tutorial=2
			loop=1
			}
} else {
	video_pause()
	video_close();
	with (master) {
	loop=1
	startmusic=1
	if tutorial<2 {
		audio_stop_sound(music)
		music=audio_play_sound(wcnyanblend,1,0)
	tutorial=2
	}
	}
}

