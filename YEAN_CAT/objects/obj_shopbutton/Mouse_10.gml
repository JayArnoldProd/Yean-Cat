/// @description Insert description here
// You can write your code in this editor
col=c_white
scalee=1*scale2
tout=0

var note = choose(0, 1, 2, 3, 4, 5, 6, 7);
var n=0

// Mapping notes to their semitone intervals in a major scale
switch(note) {
	case 0: n = 0; break;  // Root (starting point, no change)
    case 1: n = -1; break; // Major seventh below
    case 2: n = -3; break; // Major sixth below
    case 3: n = -5; break; // Perfect fifth below
    case 4: n = -7; break; // Perfect fourth below
    case 5: n = -8; break; // Major third below
    case 6: n = -10; break;// Major second below
    case 7: n = -12; break;// Lower octave
}

// Calculating pitch based on the semitone interval
pitch = power(2, n / 12);

// Playing the sound with the calculated pitch
var hov=buttonhover2
hov=buttonhover2
if n>3 {
	hov=buttonhover4
}
if n>8 {
	hov=buttonhover6
}

sound=audio_play_sound_on(myEmitter,hov,0,0,1*master.uivol*master.mastervol,0,1*pitch*(hover/255))
//note = choose(0, 1, 2, 3, 4, 5, 6, 7);
n=0

// Mapping notes to their semitone intervals in a major scale
switch(note) {
    case 0: n = 0; break; // Root
    case 1: n = 2; break; // Major second
    case 2: n = 4; break; // Major third
    case 3: n = 5; break; // Perfect fourth
    case 4: n = 7; break; // Perfect fifth
    case 5: n = 9; break; // Major sixth
    case 6: n = 11; break; // Major seventh
    case 7: n = 12; break; // Octave
}
hov=buttonhover7
if n>3 {
	hov=buttonhover5
}
if n>8 {
	hov=buttonhover3
}
// Calculating pitch based on the semitone interval
pitch2 = power(2, n / 12);

soundd=audio_play_sound_on(myEmitter,hov,0,0,1*master.uivol*master.mastervol,0,1*pitch2*(hover/255))