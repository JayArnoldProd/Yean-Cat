/// @description Helper function to draw a transparent rectangle with an outline.
/// @param {real} x1 - top left x
/// @param {real} y1 - top left y
/// @param {real} x2 - bottom right x
/// @param {real} y2 - bottom right y
/// @param {boolean} outline - outline?
/// @param {real} width - outline width
/// @param {color} o_color - outline color
/// @param {color) bg_color - background color
/// @param {real} alpha - background transparency
/// @returns {int} total number of lines in all messages
function draw_rectangle_outlined(x1,y1,x2,y2,outline,width,o_color,bg_color,alpha){
draw_set_color(o_color)
draw_set_alpha(1);
draw_line_width(x1,y1,x2,y1,width)
draw_line_width(x1,y2,x2,y2,width)
draw_line_width(x1,y1,x1,y2,width)
draw_line_width(x2,y1,x2,y2,width)
draw_set_color(bg_color)
draw_set_alpha(alpha)
draw_rectangle(x1,y1,x2,y2,outline)
}