/// @description Insert description here
// You can write your code in this editor
if lev <= 1 {
	txt=""
} else {
	txt="(x"+string(lev)+")"
}

if instance_exists(restar) {
	if restar.page=0 {
		visible=true
	} else {
		if stay=0 {
		visible=false
		}
	}
	if restar.xptime<restar.xplength {
		visible=true
		if restar.page=1 {
			stay=1
		}
	}
	if restar.falling=-1 {
		y-=restar.yprevious-restar.y
		alph-=.05
	} else {
		if restar.falling=0 {
y+=sped*master.camscale
		} else {
		y-=restar.yprevious-restar.y
		}
	}
}
if sped>0 {
alph+=.05
sped-=.1
} else {
	if instance_exists(restar) {
	if restar.falling!=-1 {
	if restar.xptime<restar.xplength {
		if restar.xpgain-restar.xpcount>=master.characters[master.charselect,4]-master.characters[master.charselect,3] {
	alph-=.05
		if alph<=0 {
		instance_destroy()
	}
	}

	} else {
		if fade=0 {
		if alph<1 {
			alph+=.05
		}
		}
	}
	if fade=1 {
		alph-=.05
	}
	
	}
	}

}