///Left pressed ON collision mask of obj_nameplate
//
if nameinput=0 {
	if os_type=os_ios or os_type=os_android {
	keyboard_string = "";
	keyboard_virtual_show(kbv_type_default, kbv_returnkey_default, kbv_autocapitalize_none, false);
	}
} else {
	nameinput=0
	if os_type=os_ios or os_type=os_android {
	keyboard_virtual_hide()
	}
	
	
}

if mouse_y>y {
	if nameinput=0 {
		nameinput=1
	fieldselect=1
	} else {
		if fieldselect=0 {
			nameinput=0
			fieldselect=-1
		} else {
		}
	}
} else {
	if nameinput=0 {
		nameinput=1
	fieldselect=0
	} else {
		if fieldselect=1 {
			nameinput=0
			fieldselect=-1
		}
	}
}

if rest=0 {

	if mouse_y>y {
	emailtext=""
	} else {
	playername=""
	}
	rest=1
}

image_index=nameinput;