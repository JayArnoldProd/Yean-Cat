/// @description Insert description here
// You can write your code in this editor
if !keyboard_check(vk_backspace) and !keyboard_check(vk_enter){
if nameinput = 1 {
	if string_length(playercreate.name)<30 {
		playercreate.name=string_insert(playercreate.name,keyboard_lastchar,0);
	}
}
}