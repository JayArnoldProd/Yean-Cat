/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_checkboxpause) {
			with (obj_checkboxpause) {
				instance_destroy();
			}
		}
		if instance_exists(obj_quitbutton) {
			with (obj_quitbutton) {
				instance_destroy();
			}
		}
		global.pause=0