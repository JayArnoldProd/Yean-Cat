/// @description Insert description here
// You can write your code in this editor
if os_type!=os_ios and os_type!=os_android {
surface_free(_surf);
if sprite_exists(_spr) {
	sprite_delete(_spr);
	}
}