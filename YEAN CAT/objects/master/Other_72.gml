/// @description Insert description here
// You can write your code in this editor
if (audio_group_is_loaded(agSFX)) {
	sfx_loaded=true;
}
if (audio_group_is_loaded(agVocals)) and (audio_group_is_loaded(agMusic)) and (audio_group_is_loaded(agMelodies)) and (audio_group_is_loaded(agDrums)) and (audio_group_is_loaded(agBass)) {
	stems_loaded=true;
}