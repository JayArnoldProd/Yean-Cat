/// @description Insert description here
// You can write your code in this editor
if nameinput=1 {
	if os_type=os_ios or os_type=os_android {
	if keyboard_virtual_status() ==  true {
		playercreate.name=keyboard_string
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