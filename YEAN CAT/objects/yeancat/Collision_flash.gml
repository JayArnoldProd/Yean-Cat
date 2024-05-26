/// yeancat Collision with flash (object)

if invincible=0 {
if instance_exists(obj_levelup) {
	exit
} else {
	if instance_exists(obj_pickupq) {
	exit
} else {
	if global.pause=1 {
	exit
} else {
}
}
}

if other.image_index<=1 {
	if random(1000)>(master.champion*1000) {
	var ddd=(other.damage/(shade+1))*(1*(1-master.resistance))*(1-oxyresistance)*(1-stemresistance)
healthh-=ddd
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
			//yeancat.healthh+=(master.faith*ddd*master.heartbreak*yeancat.oxydamage*yeancat.stemdamage/split)*(1*(1-resistance))
		}
		}
	}
	yeancat.breakheart=1
	}
	}
}
	

redcount[0]=1
	

if instance_exists(other.owner) {
with (other.owner) {
	suchit=1
}
}
responding=(other.sndmanid-1)*6+4


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

audio_sound_gain(hurtsnd,1*master.dialougevol,0);
audio_sound_gain(hurtsnd2,1*master.sfxvol,0);
	} else {
		dodge=1;
		if instance_exists(enemy) {
			instance_nearest(x,y,enemy).missed=1;
		}
	}
}
}