///NPC step
if (!is_hostile) {
    // NPC behavior when not hostile
    // For example, stand still or move slightly
} else {
    if instance_exists(restar) {
direction=point_direction(room_width/2,room_height/2,x,y)
speed+=.1
if x<0 or x>room_width or y<0 or y> room_width {
	instance_destroy()
}
exit
}
if global.pause=1 {
	exit
}
if fadeinmusic<100 {
	fadeinmusic+=.3
} else {
	fadeinmusic=100
}

	if !audio_is_playing(music) {
	if master.loop=0 {
		music=audio_play_sound_on(music_emitter,master.character_music[npcid,0],0,0)
		audio_sound_set_track_position(music,master.trackposition)
	} else {
		music=audio_play_sound_on(music_emitter,master.character_music[npcid,1],1,0)
		audio_sound_set_track_position(music,master.trackposition)
	}
}

var tn = (1+(1-abs(obj_terrain.systemposition-180)/180))
var ttn = sqr(tn)
var tttn = tn/2+.5
moveset=[4,1,8,3,7,2,10,3,8,3]
timebetweenset=[4*tn,2*tttn,3*tttn,6*ttn,2*tttn,1*tttn,4*ttn,3*tn,3*tttn,6*ttn]
enemyset=[-1,-1,-1,-1,1,-1,-1,-1,0,-1]
enemycountset=[0,0,0,0,2*tttn,0,0,0,3*tttn,0]
laserset=[-1,-1,-1,npcid,-1,-1,-1,-1,-1,npcid]
areaset=[-1,-1,-1,-1,-1,-1,npcid,-1,-1,-1]
damageset=[2*tn,1*tn,1*tn,2*tn,3*tn,1*tn,4*tn,2*tn,1*tn,3*tn]
attackspeedset=[4*ttn,2,2*tn,.5,2*tttn,1*tttn,.5,6*tttn,2*tttn,.5]
projectileset=[npcid*3,-1,npcid*3+1,-1,-1,-1,-1,npcid*3+2,-1,-1]
attackset=[2,1,2,5,3,0,6,2,3,5]
laserobj=laserset[setlection]

var xxx = x
var yyy =y

// Repel other bosses
var repel_distance = 150; // Distance at which bosses start to repel each other
var repel_strength = 0.5; // Strength of the repulsion

with (obj_npc) {
    if (id != other.id) { // Don't repel self
        var dist = point_distance(x, y, other.x, other.y);
        if (dist < repel_distance) {
            var angle = point_direction(other.x, other.y, x, y);
            var force = (repel_distance - dist) / repel_distance * repel_strength;
            x += lengthdir_x(force, angle);
            y += lengthdir_y(force, angle);
        }
    }
}

if dead=0 {
	intensity=1+(1-abs(obj_terrain.systemposition-180)/180)*2
	if instance_exists(yeancat) {
	if timercount>0 {

	timercount-=delta_time*global.room_speed_set/60
} else {
	setlection+=1
	if setlection > 9 {
		setlection=0
	}
	timerset=1000000*timebetweenset[setlection]
	attacktype=attackset[setlection]
	attackspeed=attackspeedset[setlection]
	movetype=moveset[setlection]
	projectile=projectileset[setlection]
	damage=damageset[setlection]
	enemyobj=enemyset[setlection]
laserobj=laserset[setlection]
areaobj=areaset[setlection]
	enemycount=enemycountset[setlection]
	timercount=timerset
	attacktimer=1000000
}
if attacktimer>0 {
	attacktimer-=(delta_time*global.room_speed_set/60)*attackspeed
} else {
	if movetype=2 {
				xxx=room_width/2+(random(room_width/2)-room_width/4)*master.camscale
			yyy=room_height/2+(random(room_height/2)-room_height/4)*master.camscale
			if point_distance(xxx,yyy,yeancat.x,yeancat.y)<200 {
				xxx=yeancat.x+lengthdir_x(200,point_direction(yeancat.x,yeancat.y,xxx,yyy))
				yyy=yeancat.y+lengthdir_y(200,point_direction(yeancat.x,yeancat.y,xxx,yyy))
			}
		x=xxx
		y=yyy
}
	attacktimer=1000000
	//damage while touching
	if attacktype=1  {
		if place_meeting(x,y,yeancat) {
			if missed=0 {
	if grabbed=0 and frozen = 0 {
if random(1000)>(master.champion*1000) {
var ddd = (clamp(master.dondasblessing,1,1+999*round(1-(clamp(yeancat.healthh/yeancat.maxhealth,0,1)))))*damage*(1*(1-master.resistance))*(1-yeancat.oxyresistance)*(1-yeancat.stemresistance)
yeancat.healthh-=ddd

if master.heartbreak>0 {
	var split=0
	if instance_exists(yeancat) {
	for (var _i=0; _i<instance_number(enemy);_i++) {
				 var _inst = instance_find(enemy, _i);
				 if point_distance(_inst.x,_inst.y,yeancat.x,yeancat.y)<(100*master.range*(1+(.05*master.passives[10,3])*master.einstein+master.lheartbreak)) {
				split+=1
				}
			}
	if split>0 {
	with (enemy) {
		
		if point_distance(x,y,yeancat.x,yeancat.y)<(100*master.range*(1+(.05*master.passives[10,3])*master.einstein+master.lheartbreak)) {
	
		healthh-=ddd*master.heartbreak*yeancat.oxydamage*yeancat.stemdamage/split*(1*(1-resistance))
		if master.faith > 0 {
			yeancat.healthh+=(master.faith*ddd*master.heartbreak*yeancat.oxydamage*yeancat.stemdamage/split)*(1*(1-resistance))
		}
		}
	}
	
	yeancat.breakheart=1
	}
	}
}
yeancat.redcount[0]=1
var hur1 = master.charsounds[master.charselect,0]
var hur2 = master.charsounds[master.charselect,1]
var hur3 = master.charsounds[master.charselect,2]

with (other) {
var hit = round(random(2))
var hurt = round(random(2))
if hit = 0 {
	hurtsnd2=audio_play_sound_on(s_emit,hurt1,0,0);
}
if hit = 1 {
	hurtsnd2=audio_play_sound_on(s_emit,hurt2,0,0);
}
if hit = 2 {
	hurtsnd2=audio_play_sound_on(s_emit,hurt3,0,0);
}
if hurt = 0{
	hurtsnd=audio_play_sound_on(s_emit,hur1,0,0);
}
if hurt = 1 {
	hurtsnd=audio_play_sound_on(s_emit,hur2,0,0);
}
if hurt = 2 {
	hurtsnd=audio_play_sound_on(s_emit,hur3,0,0);
}

audio_sound_gain(hurtsnd,1*master.dialougevol*master.mastervol,0);
audio_sound_gain(hurtsnd2,1*master.sfxvol*master.mastervol,0);
}
} else {
	if grabbed=0 and frozen = 0{
	yeancat.dodge=1;
	missed=1
	}
}
} 
}
		}
	}
	
	//fire projectile
	if attacktype=2  {
		var projectilee = instance_create_layer(x,y,"projectiles",obj_bossprojectile1)
		projectilee.pid=projectile
		projectilee.damage=damage
	}
	//spawn enemy
	dirmov=0
	if attacktype=3  {
		if enemyobj != -1 {
			repeat (enemycount) {
		var enem = instance_create_layer(x,y,"enemylayer",master.mobarray[enemyobj,0])
		
		if random_range(0,master.mobarray[enemyobj,7])<=1 {
					dirmov=0
					
					if master.mobarray[enemyobj,10]=8 {
						if master.mobarray[enemyobj,12]=0 {
						dirmov=round(random_range(0,7))
						} else {
							if master.mobarray[enemyobj,12]=1 {
								dirmov=round(random_range(0,1))
							}
							if master.mobarray[enemyobj,12]=2 {
								dirmov=round(random_range(2,3))
							}
						}
					} else {
						dirmov=master.mobarray[enemyobj,10]
					}
		}
			enem.movetype=dirmov
				enem.spd=master.mobarray[enemyobj,5]*master.curse*(master.level+500)/500
				enem.damage=master.mobarray[enemyobj,4]*master.curse*(master.lookingfortrouble+1)
				enem.resistance=(1-(1-master.mobarray[enemyobj,3])/master.curse)/(1+(master.level-1)/500)/(master.lookingfortrouble+1)+(1*master.lookingfortrouble)/2
				enem.sizee=master.mobarray[enemyobj,2]*(master.lookingfortrouble+10)/10
				enem.xp=master.mobarray[enemyobj,6]
				enem.dollar=(master.mobarray[enemyobj,8]*(master.level+500)/500)*(master.lookingfortrouble+2)/2
				enem.healthh=(master.mobarray[enemyobj,9]*master.curse*(master.level+200)/200)*(master.lookingfortrouble+1)
			}
		}
	}
	//area blast
	if attacktype=4  {
		var blast = instance_create_layer(x,y,"blastfx",obj_bossarea1)
		blast.areaid=areaobj
		blast.damage=damage
		blast.warning=0
	}
	//lazer with warning
	if attacktype=5  {
		var lasr = instance_create_layer(x,y,"blastfx",obj_bosslaser1)
		lasr.laserid=laserobj
		lasr.damage=damage
		lasr.warning=1
		lasr.attackspeed=attackspeed
		lasr.owner=self
	}
	//area with warning
	if attacktype=6  {
		var blast = instance_create_layer(x,y,"blastfx",obj_bossarea1)
		blast.areaid=areaobj
		blast.damage=damage
		blast.attackspeed=attackspeed
		blast.warning=1
		blast.owner=self
	}
	
}
}
	
	if instance_exists(yeancat) {
		if yeancat.x>x {
			facing=1
		} else {
			facing=-1
		}
	}
anicount+=1

if anicount>=5 {
	anicount = 0
}
if col = c_red {
	damtime-=1
	if damtime<0 {
		col=c_white
		damtime=5
	}
}
if col = c_silver {
	damtime-=1
	if damtime<0 {
		col=c_white
		damtime=5
	}
}
if missed>0 {
	col=make_color_hsv(color_get_hue(c_gray)*missed+color_get_hue(c_white)*(1-missed),color_get_saturation(c_gray)*missed+color_get_saturation(c_white)*(1-missed),color_get_value(c_gray)*missed+color_get_value(c_white)*(1-missed));
	missed-=.01
	if missed=0 {
		col=c_ltgray
	}
	if grabbed=0 {
	x-=missed*master.speedd/2*(global.room_speed_set/1000000*delta_time)
	}
} else {
	if col=c_ltgray {
		col=c_white
		missed=0
	}
}

//0=stand still
//1=turn and charge at player every 'attackspeed' seconds
//2=teleport to a random quadrant
//3=orbit player
//4=mirror player
//5=jump towards player
//6=burrow underground
//7=move to random position
//8=back away from player
//9=vanish
//10=slowly move toward player
//11=spin in place
//12=gravitate player
//13=chaos
//

if instance_exists(yeancat) {
	//stand still
	if movetype=0 {
		_hspeed=0
		_vspeed=0
		speed=0
		movespeed=0
	}
	//1=turn and charge at player every 'attackspeed' seconds
	if movetype=1 {
		if attacktimer=1000000 {
			xx=yeancat.x+lengthdir_x(point_distance(x,y,yeancat.x,yeancat.y),point_direction(x,y,yeancat.x,yeancat.y))*2/3
			yy=yeancat.y+lengthdir_y(point_distance(x,y,yeancat.x,yeancat.y),point_direction(x,y,yeancat.x,yeancat.y))*2/3
			movespeed=15*intensity
		}
	}
	//teleport
	if movetype=2 {
		movespeed=20*intensity
		if attacktimer=1000000 {
			//when attack
			xxx=room_width/2+(random(room_width/2)-room_width/4)*master.camscale
			yyy=room_height/2+(random(room_height/2)-room_height/4)*master.camscale
			if point_distance(xxx,yyy,yeancat.x,yeancat.y)<200 {
				xxx=yeancat.x+lengthdir_x(200,point_direction(yeancat.x,yeancat.y,xxx,yyy))
				yyy=yeancat.y+lengthdir_y(200,point_direction(yeancat.x,yeancat.y,xxx,yyy))
			}
			}
		if attacktimer<=500000 {
			if attacktimer>100000 {
			xx=xxx
			yy=yyy
				
			} else {
				//time right before teleporting in
			x=0
			y=0
		//make it spawn a flash
		
			}
		}
	}
	//3=orbit player
	if movetype=3 {
		movespeed=15*intensity
		orbitspeed=2*intensity
		if attacktimer=1000000 {
			orbitdir=point_direction(yeancat.x,yeancat.y,x,y)
			orbitlength=orbitr
		}
		if orbitgrow=1 {
			if orbitlength<orbitr+orbitosc {
				orbitlength+=1
			} else {
				orbitgrow=-1
			}
		} else {
			if orbitlength>orbitr-orbitosc {
				orbitlength-=1
			} else {
				orbitgrow=1
			}
		}
		orbitdir+=orbitspeed*(global.room_speed_set/1000000*delta_time)
		xx=yeancat.x+lengthdir_x(orbitlength,orbitdir)
		yy=yeancat.y+lengthdir_y(orbitlength,orbitdir)
		
	}
	//mirror player
	if movetype=4 {
		
		movespeed=10*intensity
		xx=room_width-yeancat.x
		yy=room_height-yeancat.y
	}
	//jump toward player
	if movetype=5 {
		if flying=1 {
			movespeed=10*intensity
			xx=yeancat.x 
			yy=yeancat.y
		} else {
			jumptrigger=1
			_hspeed=(yeancat.x-x)/5
			
		}
	}
	//6=burrow underground
	if movetype=6 {
	}
	//7=move to random position
if movetype=7 {
	movespeed=15*intensity
	xx=room_width/2+(random(room_width/2)-room_width/4)*master.camscale
	yy=room_height/2+(random(room_height/2)-room_height/4)*master.camscale
	}
//8=back away from player
if movetype=8 {
	movespeed=5*intensity
			xx=yeancat.x+lengthdir_x(clamp(point_distance(yeancat.x,yeancat.y,x,y)*1.5+100,0,800),point_direction(yeancat.x,yeancat.y,x,y))
			yy=yeancat.y+lengthdir_y(clamp(point_distance(yeancat.x,yeancat.y,x,y)*1.5+100,0,800),point_direction(yeancat.x,yeancat.y,x,y))
	}
//9=vanish
if movetype=9 {
	x=0
	y=0
	xx=0
	yy=0
	}
//10=slowly move toward player
if movetype=10 {
			movespeed=3*intensity
			xx=yeancat.x 
			yy=yeancat.y
	}
//11=spin in place
if movetype=11 {
	}
//12=gravitate player
if movetype=12 {
	}
//13=chaos
if movetype=13 {
	var phaseDuration = 200000; // Duration of each phase (1 or 0)
    var phase = floor((1000000 - attacktimer) / phaseDuration) % 10;
    var o = phase % 2
	if o=1 {
		movespeed=100
		xx=room_width/2+(random(room_width/2)-room_width/4)*master.camscale
		yy=room_height/2+(random(room_height/2)-room_height/4)*master.camscale
			if attacktimer>500000 {
			if point_distance(xxx,yyy,yeancat.x,yeancat.y)<200 {
				xx=yeancat.x+lengthdir_x(200,point_direction(yeancat.x,yeancat.y,xxx,yyy))
				yy=yeancat.y+lengthdir_y(200,point_direction(yeancat.x,yeancat.y,xxx,yyy))
			}
			}
		
	} else {
		movespeed=30
	}
	}
	
	
}
if x!=xx {
	x+=(xx-x)*movespeed/1000
}
if y!=yy {
	y+=(yy-y)*movespeed/1000
}
if obj_terrain.systemposition<180 {
if obj_terrain.systemposition>position {
	obj_terrain.systemposition=position
}
} else {
	if obj_terrain.systemposition<position {
	obj_terrain.systemposition=position
}
}

if dam != noone {
	dam.targ=self
	dam.x=(dam.x*1+x*2)/3
	dam.y=(dam.y*1+y*2)/3
}

if healthh>maxhealth {
	healthh=maxhealth
}


if healthh!=healthlast  and master.damagenumbers = 1 {
	if dam=noone {
	dam= instance_create_layer(x,y,"damage",obj_damage)
	dam.targ=self
	if crit=1 {
		dam.crit=1
		crit=0
	}
	dam.damage=healthlast-healthh
	} else {
		if sign(dam.damage) != sign(healthlast-healthh) {
			dam.targ=noone
			dam=noone
			dam= instance_create_layer(x,y,"damage",obj_damage)
			dam.targ=self
			if crit=1 {
		dam.crit=1
		crit=0
	}
			dam.damage=healthlast-healthh
		} else {
		dam.damage+=healthlast-healthh
			if crit=1 {
		dam.crit=1
		crit=0
	}
		}
	}
}

healthlast=healthh
if audio_is_playing(hurtsnd) {
audio_sound_pitch(hurtsnd,1*(1-master.lower/1000)*global.room_speed_set/60)
}
if healthh<=0 {
		if instance_exists(yeancat) {
		if master.soundmanager[sndmanid,5]<1 {
			if !audio_is_playing(speak) {
				if dead=0 {
		yeancat.responding=(sndmanid-1)*6+5
		speak = audio_play_sound_on(s_emit,snd[5,master.charselect],0,0)
		master.soundmanager[sndmanid,5]=round(5+random(5))
				}
			}
	}
	}
	dead=1

}

//DEAD
} else {
	
	//unlock
	if master.characters[lookid,0]=0 {
		master.characters[lookid,0]=1
		//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=0
						noti.desc2=master.characters[lookid,1]
						//noti.reward=tasks[i,6]
						noti.namee="Boss Defeated!"
						noti.namee2=master.characters[lookid,1]
						noti.desc=master.characters[lookid,1]+" Unlocked"
						noti.image=master.characters[lookid,10]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=lookid
						noti.clickable=1
						noti.relativeid=lookid
				for (var tc=0; tc<array_length(master.tasks); tc++) {
				if master.tasks[tc,6]=0 {
					if master.tasks[tc,7]=lookid {
						master.tasks[tc,5]=1
						master.tasks[tc,3]=1
						master.tasks[tc,2]=1
					}
					
				}
				}
						
						
	}
	if alphafade<1 {
		alphafade=(alphafade*49+1.01)/50
	} else {
		alphafade=1
	}
	direction=point_direction(room_width/2,room_height/2,x,y)
	speed+=.04
	bodyangle+=clamp(2-speed,0,2)
	c_cat=merge_color(c_white,c_black,alphafade)
	scale*=1.01
	if alphafade>=1 {
		
		if !audio_is_playing(speak) {
			master.spaceboss[npcid,8]=0
			instance_destroy()
		}
	}
}
var _bpm= global.target_bpm*(1-alphafade)*(1-master.lower/1000)*global.room_speed_set/60
if audio_emitter_exists(music_emitter) {
audio_emitter_position(music_emitter,x,y,0);
audio_sound_gain(music,(1-alphafade)*(fadeinmusic/100)*master.musicvol*master.mastervol*.7,0)
//audio_sound_pitch(music,(1-alphafade)*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
audio_sound_pitch(music, _bpm * master.bossp);  // Adjust boss music pitch
}
if instance_exists(restar) {
x+=sign(x-(room_width/2))*2
y+=sign(y-(room_height/2))*2
}
}

if instance_exists(obj_terrain) and instance_exists(yeancat) {
	var terrain=obj_terrain.terrain
	var spacing=obj_terrain.spacing
	var terrainheight=obj_terrain.terrainheight
	bosspos=obj_terrain.playerpos+(x-yeancat.x)/2000
	if flying=0 {
	//if onground=1 {
var clop=((600-obj_terrain.lowercloud)/600)
var index1 = 1+floor((x+spacing*(sign(bosspos)*(abs(bosspos/spacing)-floor(abs(bosspos/spacing))))) / spacing);
var index2 = 1+ceil((x+spacing*(sign(bosspos)*(abs(bosspos/spacing)-floor(abs(bosspos/spacing))))) / spacing);
var fract = frac((x+spacing*(sign(bosspos)*(abs(bosspos/spacing)-floor(abs(bosspos/spacing))))) / spacing);
if (index1 >= 0 && index2 < array_length(terrain)) {
    var height1 = terrain[index1] * terrainheight;
    var height2 = terrain[index2] * terrainheight;
	if flying=0 {
    boss_height_fromground = (y-spacing*.9+lerp(height1, height2, fract) - (y))*clop;
	} else {
		//boss_height_fromground=0
	}
	boss_angle_onground=point_direction(0,height1,spacing,height2)

}

ground_yvalue_belowboss=boss_height_fromground+y-_vspeed*(global.room_speed_set/1000000*delta_time)
if ground_yvalue_belowboss<=0 {
	y=yprevious
	_vspeed=0
}


	var tarang=boss_angle_onground
	var tarang2=point_direction(0,0,_hspeed*10,_vspeed*10)+90*abs(facing-1)
if rotatebody!=(tarang * (1/(1+(boss_height_fromground+bossaltitude)/200))+ tarang2 * (1-1/(1+(boss_height_fromground+bossaltitude)/200))) {
var _diff = angle_difference(tarang, rotatebody);
var _diff2 = angle_difference(tarang2, rotatebody);

rotatebody += (_diff * 0.5 * (1/(1+(boss_height_fromground+bossaltitude)/200))+_diff2 * 0.1 * (1-1/(1+(boss_height_fromground+bossaltitude)/200)))*(1/(1+(boss_height_fromground+bossaltitude)/20000))
} else {
	rotatebody=(tarang * (1/(1+(boss_height_fromground+bossaltitude)/200))+ tarang2 * (1-1/(1+(boss_height_fromground+bossaltitude)/200)))
}
	//}

} else {
	bossaltitude=40000
	if facing=1 {
		rotatebody=(rotatebody*59)/60
	} else {
		rotatebody=(rotatebody*59)/60
	}
	if rising=0 and bossaltitude>0 {
	y+=(global.room_speed_set/1000000*delta_time)*_vspeed
	}
}
	
	if ((boss_height_fromground)-tallness+bossaltitude - _vspeed)<=0 {
		if master.mainmenu=0 and flying=0 {
		onground=1
		canjump=1
		jumpcount=jumptotal
		_vspeed=0;
		bossaltitude=0
		y=ground_yvalue_belowboss-tallness
		}
	} else {
		if boss_height_fromground-tallness+bossaltitude-_vspeed>3 {
			//jumping=1
		onground=0
		} else {
	jumping=0
		}
		if rising=0 {
		y+=(global.room_speed_set/1000000*delta_time)*_vspeed
			if bossaltitude>0 {
			bossaltitude-=(global.room_speed_set/1000000*delta_time)*_vspeed
			} else {
				bossaltitude=0
			}
		} else {
			//	if bossaltitude>=0 {
			//bossaltitude-=(global.room_speed_set/1000000*delta_time)*_vspeed
			//} else {
			//	bossaltitude=0
			//}

		}
	}
if jumptrigger=1 {
	if rising=-1 {	
if canjump=1 {
		_vspeed+=clamp(-((abs(clamp(power(abs(_hspeed),.5),-100,100))+15)*jumpheight),-75-(bossaltitude/4000),0)
		if _vspeed>0 {
			_vspeed=clamp(-((abs(clamp(power(abs(_hspeed),.5),-100,100))+15)*jumpheight),-75-(bossaltitude/4000),0)/(1+abs(_vspeed/25))
		}
		y+=(global.room_speed_set/1000000*delta_time)*_vspeed/2
		rising=0
		jumptrigger=0
	}
	}
	if flying=0 {

if canjump=1 {
	_vspeed+=clamp(-((abs(clamp(power(abs(_hspeed),.5),-100,100))+15)*jumpheight),-75-(bossaltitude/4000),0)
		if _vspeed>0 {
			_vspeed=clamp(-((abs(clamp(power(abs(_hspeed),.5),-100,100))+15)*jumpheight),-75-(bossaltitude/4000),0)/(1+abs(_vspeed/25))
		}
	if !rising=1 and bossaltitude<0 {
	y+=(global.room_speed_set/1000000*delta_time)*_vspeed/2
	} else {
			if bossaltitude>0 {
			
				rising=0
			bossaltitude-=(global.room_speed_set/1000000*delta_time)*_vspeed
			} else {
				bossaltitude=0
			}
		}
	jumping=1
	jumpcount-=1
	if jumpcount<=0 {
		canjump=0
		jumpcount=0
	}
	}
}
}
if movingg=0 {
	//moving in game
	if positionplace!=0 {
x+=(global.room_speed_set/1000000*delta_time)*_hspeed
	} else {
		//if positionplace=0 {
			if master.mainmenu=1 {
		x+=(global.room_speed_set/1000000*delta_time)*_hspeed/2
			} else {
				x+=(global.room_speed_set/1000000*delta_time)*_hspeed
			}
		//}
	}
} else {
	bosspos+=(global.room_speed_set/1000000*delta_time)*master.horz*abs(_hspeed);
}

}

// Check for player interaction
if instance_exists(yeancat) {
if (distance_to_object(yeancat) < 32 && keyboard_check_pressed(vk_space)) {
    if (action_trigger != "") {
        // Execute the action trigger
        execute_action(action_trigger);
    }
}
}