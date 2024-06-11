/// @description Insert description here
// You can write your code in this editor

for (i=framee-1; i>0; i--) {
	if lastkey=0 {
		break
	}
	if trackk[i,0]=1 {
		if lastkey=5 {
			trackk[i,0]=0
			lastkey=0
			if lastnote1!=noone {
				with (lastnote1) {
					instance_destroy();
					lastnote1=noone
				}
			}
			if lastnote2!=noone {
				with (lastnote2) {
					instance_destroy();
					lastnote2=noone
				}
			}
			if lastnote3!=noone {
				with (lastnote3) {
					instance_destroy();
					lastnote3=noone
				}
			}
			if lastnote4!=noone {
				with (lastnote4) {
					instance_destroy();
					lastnote4=noone
				}
			}
			break
		}
	}
	if trackk[i,1]=1 {
		if lastkey=1 {
			trackk[i,1]=0
			lastkey=0
			if lastnote!=noone {
				with (lastnote) {
					instance_destroy();
					lastnote=noone
				}
			}
			break
		}
	}
	if trackk[i,2]=1 {
		if lastkey=2 {
			trackk[i,2]=0
			lastkey=0
			if lastnote!=noone {
				with (lastnote) {
					instance_destroy();
					lastnote=noone
				}
			}
			break
		}
	}
	if trackk[i,3]=1 {
		if lastkey=3 {
			trackk[i,3]=0
			lastkey=0
			if lastnote!=noone {
				with (lastnote) {
					instance_destroy();
					lastnote=noone
				}
			}
			break
		}
	}
	if trackk[i,4]=1 {
		if lastkey=4 {
			trackk[i,0]=0
			lastkey=0
			if lastnote!=noone {
				with (lastnote) {
					instance_destroy();
					lastnote=noone
				}
			}
			break
		}
	}
}
