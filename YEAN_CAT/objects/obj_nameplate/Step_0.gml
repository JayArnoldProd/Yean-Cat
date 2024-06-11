//Step of obj_nameplate

time+=.05
x=room_width/2
y=0+clamp(time*150,0,room_height/2+150)
image_index=nameinput;

var stretchmenu=1.1+clamp(max(string_length(playername),string_length(emailtext))-17,0,320)/30
if stretchm!=stretchmenu {
	stretchm= (stretchm*19+stretchmenu)/20
}
image_xscale=stretchm
if nameinput=1 {
	if os_type=os_ios or os_type=os_android {
	if keyboard_virtual_status() ==  true {
		playername=keyboard_string
	}
	}
	
	blink-=1
	if blink<0 {
		if endstring=" " or endstring="" {
			endstring="<"
		} else {
			endstring=" "
		}
	blink=30
	}
} else {
	blink=30
	endstring=""
}