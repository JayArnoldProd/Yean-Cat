/// @description Insert description here
	startmusic=0;
	audio_sound_pitch(music,1);
	audio_stop_all();
	audio_group_unload(agMusic);
	audio_group_unload(agSFX);
	audio_group_unload(agUI);
	audio_group_unload(agDialouge);

	audio_group_unload(agVocals);
	audio_group_unload(agMelodies);
	audio_group_unload(agDrums);
	audio_group_unload(agBass);
	lower=0
	instance_create_layer(x,y,"player",restar)