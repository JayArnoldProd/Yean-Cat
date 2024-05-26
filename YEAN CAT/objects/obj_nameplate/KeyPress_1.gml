///key press any obj_nameplate
// You can write your code in this editor
if !keyboard_check(vk_backspace) and !keyboard_check(vk_enter) and !keyboard_check_pressed(vk_shift){
if nameinput = 1 {
	if fieldselect=0 {
		if playername="Enter Name" or playername= "Type a Player Name" or playername = "Please choose an appropriate name" or playername = "Name Already Taken" {
			playername=""
}
	if string_length(playername)<25 {
		playername=string_insert(playername,keyboard_lastchar,0);
	}
	}
	if fieldselect=1 {
		if emailtext="youremail@email.com" or emailtext ="Enter your E-mail" or emailtext = "Enter a valid E-mail" or emailtext = "E-mail Already Taken" {
	emailtext=""
}
	if string_length(emailtext)<320 {
		emailtext=string_insert(emailtext,keyboard_lastchar,0);
	}
	}
}
}


