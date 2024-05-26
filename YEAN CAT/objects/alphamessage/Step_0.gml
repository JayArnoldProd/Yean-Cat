/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_jayarnoldlogo) {
	if obj_jayarnoldlogo.playing=1 {
		exit
		waitt=1
	}
}

if waitt=1 {
	if !instance_exists(obj_jayarnoldlogo) {
	if delaytime>0 {
		
		delaytime-=1
		exit
	} else {
		
	}
	}
}

if !instance_exists(obj_jayarnoldlogo) {
	if timeout>0 {
		timeout-=1
		if image_xscale<.75 {
		image_xscale+=.006
		}
		if image_alpha<1 {
			image_alpha+=.01
			
		}
	}
} else {
	if obj_jayarnoldlogo.image_xscale>10 {
		if image_xscale<.75 {
		image_xscale+=.006
		}
		if image_alpha<1 {
			image_alpha+=.01
			
		}
		
	}
}
if timeout<0 {
	if image_xscale>0 {
		image_xscale-=.004
	}
	if image_alpha>0 {
			image_alpha-=.005
			
		} else {
			master.shownmessage=1
			instance_destroy()
		}
	
}

