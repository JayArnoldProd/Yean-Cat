/// @description Insert description here
// You can write your code in this editor
if devmode=1 and global.pause=0 {
	if mainmenu = 0 {
	second+=1;
	//speedd+=.002*60
	if keyboard_check(vk_control) {

		second+=9;
		//speedd+=.018*60
		ti+=9;
	}
	tiprev=ti
	ti+=1
	if stemplay=1 {
		if stemtime>0 {
			stemtime-=1
		} else {
			stemplay=0
		}
  }

if second>59 {
	minute+=1
	second=0
}

if minute>59 {
	hour+=1
	minute=0
}
	}
}

