/// @description Insert description here
// You can write your code in this editor
if nameinput=0 {
	nameinput=1
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

image_index=nameinput;