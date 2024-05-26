{
	if instance_exists(obj_reviveq) {
	if obj_reviveq.falling=-1 or obj_reviveq.falling=1 {
		exit
	}
}
	
}

if yorn=-1 {
		yeancat.deaths+=1
		with (master) {
			deaths+=1
	master.stemtime=0
	master.stemplay=0
{
	audio_sound_gain(sound1, 0, 0);
	audio_group_set_gain(agBass,0,0);
}
{
	audio_sound_gain(sound2, 0, 0);
	audio_group_set_gain(agDrums,0,0);
}
{
	audio_sound_gain(sound3, 0, 0);
	audio_group_set_gain(agMelodies,0,0);
}
{
	audio_sound_gain(sound4, 0, 0);
	audio_group_set_gain(agVocals,0,0);
}
		}
		audio_play_sound(skipsound1,0,0,1*master.uivol*master.mastervol,0,.99+random(2)/100)
		if instance_exists(yeancat) {
			with (yeancat) {
				instance_destroy();
			}
}
}
if yorn=1 {
	if instance_exists(yeancat) {
	yeancat.healthh=yeancat.maxhealth*(1-(1-.5*master.einstein)/master.leinstein)
	master.revani=1;
	master.deaths+=1
	yeancat.deaths+=1
	yeancat.invincible=1
	instance_create_layer(yeancat.x,yeancat.y,"uii",obj_miraclespash);
	}
}
if yorn=2 {
	if os_type=os_ios or os_type=os_android {
		//show add
		if master.noad=0 {
		master.showad=1
		} else {
			//display message
			//"SORRY WE CANT LOAD A VIDEO RIGHT NOW"
		}
	} else {
	if instance_exists(yeancat) {
	yeancat.healthh=yeancat.maxhealth*(1-(1-.5*master.einstein)/master.leinstein)
	master.revani=1;
	master.deaths+=1
	yeancat.deaths+=1
	yeancat.invincible=1
	instance_create_layer(yeancat.x,yeancat.y,"uii",obj_miraclespash);
	}
	}
}

if master.showad=0 {
if instance_exists(obj_reviveq) {
with (obj_reviveq) {
	falling=-1
}
} else {
	instance_destroy();
}
}
//with (obj_yesorno) {
//	instance_destroy()
//}

