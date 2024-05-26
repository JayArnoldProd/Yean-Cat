/// @description Insert description here
// You can write your code in this editor
if master.dondadollars>=cost {
	col=c_green
} else {
	col=c_red
}
if obj_upgrademenu.upgrades[obj_upgrademenu.selected,1] >= obj_upgrademenu.upgrades[obj_upgrademenu.selected,2] {
	col=c_gray
}
scale=.85