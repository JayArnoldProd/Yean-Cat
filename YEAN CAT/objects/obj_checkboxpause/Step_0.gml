/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_pausemenu) {
x=-30+obj_pausemenu.x+((num)/(countt+1)-.5)*1200
y=obj_pausemenu.y+300
} else{
	instance_destroy();
}
if audio_emitter_exists(myEmitter) {
audio_emitter_position(myEmitter,x,y,0)
}
image_index=enabled
if load=0 {
	if abcd=0 {
	enabled=master.damagenumbers
	}
	if abcd=1 {
	enabled=master.moneynumbers
	}
	if abcd=2 {
	enabled=master.muteall
	}
	if abcd=3 {
	enabled=master.specialfx
	}
	if abcd=3 {
	enabled=master.fullscreen
	}
	load=1
}

if abcd=0 {
	
	text="Damage Numbers"
	master.damagenumbers=enabled
}
if abcd=1 {
	text="Money Numbers"
		master.moneynumbers=enabled
}
if abcd=2 {
	text="Mute All"
		master.muteall=enabled

}
if abcd=3 {
	text="Special FX"
		master.specialfx=enabled
		
}
if abcd=4 {
	text="Fullscreen"
		master.fullscreen=enabled
		
}

