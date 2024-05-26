/// @description Insert description here
// You can write your code in this editor
if instance_exists(restar) {
image_alpha=(sqrt(1-(clamp((room_height/2-restar.y)/500,0,1))))
}
ex=0
if restar.xptime>=restar.xplength {
	if dropcount>0 {
	dropcount-=2
	}
}

if os_type = os_ios or os_type=os_android {
} else {
	//ad=0
}
if abcd=0 {
exani+=(global.room_speed_set/1000000*delta_time)*.5
time+=(global.room_speed_set/1000000*delta_time)*.25
if exani>11 {
	exani=0
}

	for (var i=0; i<array_length(master.notice); i++ ) {
	if master.notice[i,0]=1 {
		if master.notice[i,3]!=-1 {
		ex=1
		}
	}
}
for (var ii=0; ii<array_length(master.notice); ii++ ) {
	if master.notice[ii,1]=1 {
		if master.notice[ii,3]!=-1 {
		ex=2
		}
	}
}

var countpoint=0
for (var iii=0; iii < array_length(master.characters); iii++) {
countpoint+=(master.characters[iii,2]-(master.characters[iii,5]+master.characters[iii,6]+master.characters[iii,7]+master.characters[iii,8]-3))
}
if countpoint>0 {
	ex=1
}
}
{
	if abcd=0 {
if ad=1 {
x=restar.x+300*master.camscale
} else {
	x=restar.x+180*master.camscale
}
y=restar.y+310*master.camscale+(restar.stretchy-1)*280*master.camscale
}
if abcd=1 {
x=restar.x
y=restar.y+310*master.camscale+(restar.stretchy-1)*280*master.camscale
}
if abcd=2 {
if ad=1 {
x=restar.x-300*master.camscale
} else {
	x=restar.x-180*master.camscale
}
y=restar.y+310*master.camscale+(restar.stretchy-1)*280*master.camscale
}
if abcd=3 {
x=restar.x
y=restar.y-385*master.camscale-dropcount-(restar.stretchy-1)*220*master.camscale
}
}
if image_xscale!= scale {
	image_xscale= (image_xscale*9+scale)/10
}
if abcd=3 {
image_yscale=image_xscale*.9-.5*(restar.stretchy-1)
} else {
	image_yscale=image_xscale*.9+.9*(clamp(restar.stretchy-1,0,1))
}

image_index=enabled
if load=0 {

	load=1
}

if abcd=0 {
	
	text="MAIN MENU"
}
if abcd=1 {
	text="X2 XP\n(watch ad)"
}
if abcd=2 {
	text="PLAY AGAIN"
}
if abcd=3 {
	if restar.deet=1 and restar.falling != -1 {
		text="SUMMARY"
	} else {
		if restar.deet=0 and restar.falling !=-1 {
	text="DETAILS"
	} 
	}
}

