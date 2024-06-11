/// @description Insert description here
// You can write your code in this editor
if deflectable = 1 {
other._vspeed=-other._vspeed
other._hspeed=-other._hspeed
other.direction=other.direction+180

_vspeed=-_vspeed
_hspeed=-_hspeed
direction=direction+180
deflected=1

with (other) {
	instance_destroy()
}
instance_destroy()
}


