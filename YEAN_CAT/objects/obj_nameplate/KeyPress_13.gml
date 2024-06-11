///key press enter obj_nameplate

if instance_exists(obj_controlhs) {
	
		var _docy = global.data
for (var i=0; i< array_length(_docy); i++;)
		{
			if _docy[i]=-1 {
				exit
			}
			if _docy[i] !=-1 {
			var _doc=  _docy[i]; 
				if _doc!=-1 {
			if _doc.named=playername {
				//name already taken
				playername="Name Already Taken"
				rest=1
				exit
			}
			if _doc.email=emailtext {
				//name already taken
				emailtext="E-mail Already Taken"
				rest=1
				exit
			}
				}
			
			} 
		} 
if playername="Enter Name" {
	playername="Type a Player Name"
	fieldselect=0
}

if emailtext="youremail@email.com" {
	emailtext="Enter your E-mail"
	if playername!="Type a Player Name" {
		fieldselect=1
	}
}
if is_valid_email(emailtext) = false {
	emailtext="Enter a valid E-mail"
}
if contains_profanity(playername) = true {
	playername="Please choose an appropriate name"
}
if playername!="" {
	if fieldselect!=1 {
	if emailtext="youremail@email.com" or emailtext="E-mail Already Taken" or emailtext="Enter your E-mail" or emailtext="Enter a valid E-mail" {
	fieldselect=1
	exit
	}
	}
}
if emailtext="Enter your E-mail" or playername="Type a Player Name" or playername="Name Already Taken" {
	exit
}
if emailtext="Enter a valid E-mail" or playername="Please choose an appropriate name" {
	exit
}

		
		
master.playername=playername
master.email=emailtext
	master.playerid=real(string(date_current_datetime()))*100
	master.playernumber=array_length(_docy)+1
	

instance_destroy()
}