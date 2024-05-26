/// @description Insert description here
// You can write your code in this editor
if time>1.5 {
	if safety=0 and obj_levelup.banishing=0 {
if instance_exists(obj_levelup) {
	if num=1 {
	master.randomchoice=1
	}
	if num=2 {
	master.randomchoiceonce=1
	}

} else {
	instance_destroy();
}
}
//with (obj_yesorno) {
//	instance_destroy()
//}
}
safety=0

