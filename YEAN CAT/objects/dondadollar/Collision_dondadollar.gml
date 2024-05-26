/// @description Insert description here
// You can write your code in this editor
if rand>other.rand {
		valuee+=other.valuee
		rand=other.rand
		with (other) {
			instance_destroy()
		}
		var moneys = nothingsound
		var pick = choose (1,2,3,4) {
			if pick=1 {
				moneys=moneys1
			}
			if pick=2 {
				moneys=moneys1
			}
			if pick=3 {
				moneys=moneys1
			}
			if pick=4 {
				moneys=moneys1
			}
		}
		audio_play_sound_on(myEmitter,moneys,0,0,.5,0,.9+random(20)/100)
		
} else {

}