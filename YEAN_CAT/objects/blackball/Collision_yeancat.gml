/// @description Insert description here
// You can write your code in this editor
if instance_exists(yeancat) and dead=0 {
if other.invincible=0 {
	if aty=1 and atrate=-1 {
if missed=0 {
	if grabbed=0 and frozen = 0 {
if random(1000)>(master.champion*1000) {
var ddd=(clamp(master.dondasblessing,1,1+999*round(1-(clamp(yeancat.healthh/yeancat.maxhealth,0,1)))))*damage*(1*(1-master.resistance))*(1-yeancat.oxyresistance)*(1-yeancat.stemresistance)
other.healthh-=ddd
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
			yeancat.healthh+=abs((master.faith*ddd*master.heartbreak*yeancat.oxydamage*yeancat.stemdamage/split)*(1*(1-resistance)))
		}
		}
	}
	yeancat.breakheart=1
	}
	}
}
other.redcount[0]=1


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
	hurtsnd=audio_play_sound_on(s_emit,yehurt1,0,0);
}
if hurt = 1 {
	hurtsnd=audio_play_sound_on(s_emit,yehurt2,0,0);
}
if hurt = 2 {
	hurtsnd=audio_play_sound_on(s_emit,yehurt3,0,0);
}
}
audio_sound_gain(hurtsnd,1*master.dialougevol*master.mastervol,0);
audio_sound_gain(hurtsnd2,1*master.sfxvol*master.mastervol,0);
if doc=1 {
	instance_destroy()
}
} else {
	if grabbed=0 and frozen = 0{
	yeancat.dodge=1;
	missed=1
	}
}
	}
}
} else {
	if aty =1 {
		if hitt=1{
			if missed=0 {
	if grabbed=0 and frozen = 0 {
if random(1000)>(master.champion*1000) {
var ddd=(clamp(master.dondasblessing,1,1+999*round(1-(clamp(yeancat.healthh/yeancat.maxhealth,0,1)))))*damage*(1*(1-master.resistance))*(1-yeancat.oxyresistance)*(1-yeancat.stemresistance)
other.healthh-=ddd
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
other.redcount[0]=1

var hur1 = master.charsounds[master.charselect,0]
var hur2 = master.charsounds[master.charselect,1]
var hur3 = master.charsounds[master.charselect,2]

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

if doc=1 {
	instance_destroy()
}
} else {
	if grabbed=0 and frozen = 0{
	yeancat.dodge=1;
	missed=1
	}
}
	}
}
quan-=1
att=atrateset
		}
	}
	if quan=0 {
		instance_destroy()
	}
}
}
}