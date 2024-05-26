// obj_chat_bubble: Step Event
if (owner != noone) {
    x = owner.x;
    y = owner.y - 60;
}

//wrapping
if wrapped=0 {
draw_set_font(text_font);
draw_set_halign(fa_middle);
draw_set_valign(fa_top);
var longestWordWidth = get_longest_word_width(_text, text_font, text_scale);
text_scale=min(clamp(1-string_length(_text)/500,.5,1),clamp(1.5-longestWordWidth/1000,.5,1))
// Get the longest word width and use it to calculate the maximum width
max_width=clamp(max(500+string_length(_text)*1.5,longestWordWidth/2+250),min_width,1500)//scale max width based on string length
_text = wrap_text(_text, max_width - 2 * padding);  // Wrap text according to max_width
line_count = string_count("\n", _text) + 1;
scale_x = clamp(string_width(_text) + 6 * padding, min_width, max_width);
//i added a macro to tweak the scaling of the text box in terms of string height
real_scale_y = clamp(((line_count-1) * (string_height("M")+30*text_scale)) * 1.5 * text_scale / 2+120, min_height-120, max_height-120);
wrapped=1
}

//defining the scaly_y from the real scale of the chat bubble
scale_y=real_scale_y+120

//define facing
if sprite_get_xoffset(sprite_index)=250 {
	facing=0 //centered
} else {
	if sprite_get_xoffset(sprite_index)>250 {
		facing=-1 //left
	} else {
		facing=1 //right
	}
}

//decay time
lifetime++;
if (lifetime >= duration) {
    instance_destroy();
}
