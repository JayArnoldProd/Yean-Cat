/// @description Insert description here
// You can write your code in this editor
if obj_pausemenu.falling=0 {
obj_pausemenu.falling=-1

		with (master) {
	master.stemtime=0
	master.stemplay=0
{
	audio_sound_gain(sound1, 0, 0);
	audio_group_set_gain(agBass,0,0);
}
{
	audio_sound_gain(sound2, 0, 0);
	audio_group_set_gain(agDrums,0,0);
}
{
	audio_sound_gain(sound3, 0, 0);
	audio_group_set_gain(agMelodies,0,0);
}
{
	audio_sound_gain(sound4, 0, 0);
	audio_group_set_gain(agVocals,0,0);
}
		}
		instance_destroy(obj_chat_bubble);
		instance_destroy(yeancat);
		
		//if instance_exists(obj_terrain) {
		//	with (obj_terrain) {
		//		instance_destroy()
		//		exit
		//	}
		//}
	

}
