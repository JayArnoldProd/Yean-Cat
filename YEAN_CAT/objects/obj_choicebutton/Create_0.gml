/// @description Insert description here
// You can write your code in this editor
if mouse_check_button(mb_left) {
	safety=1
}
sound=audio_play_sound(nothingsound,0,0)
safety=0
time=0
image_speed=0
image_index=0
lockk=0
rand=-1
limittext= [
[["+1% Attack Rate","+2% Damage","+1% Projectile Speed","+1 Degree Range"],["","","",""]],
[["","","",""],["","","",""]],
[["+1% Attack Rate","+2% Damage","+1 Grab Quantity","+1 Projectile"],["","","",""]],
[["","","",""],["","","",""]],
[["+2% Attack Rate","+2% Damage","+1% Volume","+2% Duration"],["","","",""]],
[["","","",""],["","","",""]],
[["+1% Attack Rate","+2% Damage","+1% Range","+1% Damage"],["","","",""]],
[["","","",""],["","","",""]],
[["+1% Attack Rate","+2% Damage","+1% Rotation Speed","+1% Duration"],["","","",""]],
[["","","",""],["","","",""]],
[["+1% Attack Rate","+2% Damage","+1% Range","+1 Projectile"],["","","",""]],
[["","","",""],["","","",""]],
[["","","",""],["","","",""]],
[["+.2% Attack Rate","+2% Damage","+1% Size","+2% Duration"],["","","",""]],
[["","","",""],["","","",""]],
[["+1% Attack Rate","+2% Damage","+1% Range","+1% Damage"],["","","",""]],
[["","","",""],["","","",""]],
[["+1% Attack Rate","+2% Damage","+1% Duration","+1% Speed"],["","","",""]],
[["+2% Speed","+2% Damage","+1% Size","+1% Oscillation Range"],["","","",""]],
[["+1% Attack Rate","+2% Damage","+1% Projectile Speed","+1% Projectile Size"],["","","",""]],
[["","","",""],["","","",""]],
[["+1% Move Speed","+2% Damage","+1% Size","+1% Range"],["","","",""]],
[["+2% Speed","+2% Damage","+1% Size","+1% Oscillation Range"],["","","",""]],
[["+1% Attack Rate","+2% Damage","+1% Duration","+1% Fire Speed"],["","","",""]],
[["","","",""],["","","",""]],
[["+1% Move Speed","+2% Damage","+1% Size","+1% Range"],["","","",""]],
[["","","",""],["","","",""]],
[["+1% Speed","+2% Damage","+1% Size","+1% Duration"],["","","",""]],
[["","","",""],["","","",""]],
[["+1% Attack Rate","+2% Damage","+1% Range","+1% Damage"],["","","",""]],
[["","","",""],["","","",""]],
[["","","",""],["","","",""]],
[["+2% Range","+2% Damage","+1% Damage","+1% Range"],["","","",""]],
[["","","",""],["","","",""]],
[["","","",""],["","","",""]],
[["","","",""],["","","",""]],
[["","","",""],["","","",""]],
[["","","",""],["","","",""]]
]


//["A Toy Gun","+33% Attack Rate\n+33% Aim Speed","x2 Damage","+1 Penetration","+33% Attack Rate\n+33% Aim Speed","+50% Damage","+20 Degrees Range\n+50% Aim Speed","+20% Attack Rate\n+50% Projectile Speed","+25% Projectile Size\n+50% Damage\n+20% Attack Rate","+1 Projectile",""],
//["","","","","","","","","","",""],
//["The Twitter Machine","x2 Damage","+1 Projectile","+33% Attack Rate\nand + 50% Projectile Speed","Grabs 2 Enemies","x2 Damage","+1 Projectile","+50% Attack Rate","+50% Projectile Size","x2 Damage",""],
//["","","","","","","","","","",""],
//["","","","","","","","","","",""],
//["","","","","","","","","","",""],
//["Bass Bumpin'","x1.5 Damage","+33% Range","+50% Rate","+66% Damage","+25% Range","+33% Rate","+50% Damage","+15% Range","x2 Damage",""],
//["","","","","","","","","","",""],
//["Break Free","+10% Range\n+25% Rotation Speed","+25% Duration\n+10% Rotationspeed","+33% Attack Rate","+25% Damage\n+25% Duration","+25% Rotation Speed","+33% Attack Rate","+50% Damage","+50% Rotation Speed","+25% Range",""],
//["","","","","","","","","","",""],
//["In the Name of the Father","+33% Rate","+25% Range","+1 Amount","+50% Damage","+25% Range","+33% Rate","+1 Amount","+25% Range","x2 Damage",""],
//["","","","","","","","","","",""],
//["","","","","","","","","","",""],
//["Enter Zen","2nd Chakra\n+50% Damage","3rd Chakra\n+25% Range","4th Chakra","5th Chakra\n+50% Damage","6th Chakra\n+25% Range","7th Chakra","+33% Duration","+50% Orb Speed","+1 Penetration",""],
//["","","","","","","","","","",""],
//["It's a Brewin'","+25% Range","+25% Damage","+33% Attack Rate","+1 Chain Length","+25% Duration","+50% Damage","+33% Attack Rate","+25% Range","+1 Chain Length",""],
//["","","","","","","","","","",""],
//["I'm a Sensitive Person","+33% Fish Speed","+25% Duration","+50% Attack Rate","+50% Damage\n+25% Fish Size","+25% Duration","+33% Attack Rate","+33% Fish Speed","+25% Duration\n+50% Attack Rate","+50% Damage\n+25% Fish Size",""],
//["I wanna go there","+50% Damage\n+50% Orbit Speed","+25% Radius\n+25% Size","+50% Oscilation Rate\nx2 Oscillation Range","x2 Damage","+25% Radius\n+50% Orbit Speed","+50% Oscilation Rate\nx2 Oscillation Range","x2 Damage","+25% Radius\n+25% Size","x3 Damage",""],
//["Blacka Blacka!","+50% Fire Rate","+50% Damage\n+50% Aim Speed","+50% Fire Rate\n+50% Projectile Speed","+1 Penetration","+50% Damage/n+50% Projectile Speed","+50% Fire Rate\n+50% Aim Speed","+50% Projectile Speed\n+50% Fire Rate","+50% Projectile Size\n+20% Attack Rate\n+20% Damage","+50% Fire Rate",""],
//["","","","","","","","","","",""],
//["","","","","","","","","","",""],
//["Give them Scars","+50% Movement Speed","+25% Range\n+25% Size","+50% Attack Rate\nx2 Range","x2 Damage","+25% Range\n+50% Movement Speed","+50% Attack Rate\nx2 Range","x2 Damage","+25% Range\n+25% Size","x3 Damage",""],
//["La Flame","+33% Fire Speed","+25% Duration","+50% Attack Rate","+50% Damage\n+25% Projectile Size","+25% Duration","+50% Rate","+33% Fire Speed","+50% Damage","+25% Size\n+25% Duration",""],
//["","","","","","","","","","",""],
//["","","","","","","","","","",""],
//["","","","","","","","","","",""],
//["Howl at the Moon","+50% Damage","+50% Duration","+33% Rate","+50% Wolf Speed","+25% Duration","+25% Wolf Speed\n+1 Attack Count","+33% Duration","+33% Rate\n+50% Damage","+33% Wolf Speed\n+1 Attack Count",""],
//["","","","","","","","","","",""],
//["That S**t is Bright","x2 Damage","+33% Range","+33% Rate","+50% Damage","+25% Range","+33% Rate","+50% Damage","+15% Range","x2 Damage",""],
//["","","","","","","","","","",""],
//["","","","","","","","","","",""],
//["Imagination","+50% Damage","+25% Range","+50% Damage","+25% Range","+50% Damage","+25% Range","+50% Damage","+25% Range","+50% Damage",""],
//["","","","","","","","","","",""],
//["","","","","","","","","","",""],
//["","","","","","","","","","",""],
//["","","","","","","","","","",""],
//["","","","","","","","","","",""]
show_button=0
button_look=0
chosen=0
randlimit=0
scale=1.7
image_xscale=1.7
image_yscale=.82*image_xscale
name=""
image=spr_empty
desc=""
level=0
maxlevel=0
numb=-1
type=0 //0 none //1 weapon //2 passive
pasrequirement1=-1
pasrequirement2=-1
weprequirement1=-1
weprequirement2=-1
col=c_white
abcd=-1
num=0
load=1
text=""
countt=(obj_levelup.choicetotal)
