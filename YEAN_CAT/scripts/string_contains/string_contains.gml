// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Helper function to check if a character is in a string
function string_contains(argument0, argument1) {
	var strng= argument0
	var char = argument1
    return string_pos(char, strng) > 0;
}