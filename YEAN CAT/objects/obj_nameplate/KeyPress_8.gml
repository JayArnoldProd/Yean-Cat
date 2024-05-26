/// keypress backspace obj_nameplate
// You can write your code in this editor
if nameinput=1 {
	if fieldselect=0 {
playername=string_delete(playername,string_length(playername),1)
if playername="Enter Name" or playername="Name Already Taken" or playername="Type a Player Name" or playername = "Please choose an appropriate name" {
	playername=""
}
	}
	if fieldselect=1 {
		if emailtext="youremail@email.com" or emailtext="E-mail Already Taken" or emailtext="Enter your E-mail" or emailtext="Enter a valid E-mail" {
			emailtext=""
		}
emailtext=string_delete(emailtext,string_length(emailtext),1)

	}
}