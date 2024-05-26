/// @description Insert description here
// You can write your code in this editor

if stepp>0 {
//outline
var numCopies = round(stepp*(1+speed/30)); // Number of copies to draw
 // Replace with the name of your bullet sprite
var bulletAlpha = (10+speed)/(100+speed); // Initial alpha value for the bullet (fully opaque)

// Calculate the step size for positioning the copies
var stepX = (10+speed/40)*(sx) / numCopies;
var stepY = (10+speed/40)*(sy) / numCopies;

// Loop to draw the copies
for (var i = 1; i <= numCopies; i++) {
    // Draw the bullet copy
    draw_sprite_ext(bulletImage, pid, x + (stepX * i), y + (stepY * i)*face, image_xscale*(1+2*(1-1/(i))), image_yscale*(5/(i+4)), image_angle, c_black, bulletAlpha*(1-i/numCopies));

    // Reduce the alpha value for the next copy
    bulletAlpha -= bulletAlpha/numCopies; // Adjust this value to control the fading rate
}
}



draw_sprite_ext(bulletImage,pid,x,y,image_xscale*1.15,image_yscale*1.15,image_angle,c_black,1)
//regular
draw_sprite_ext(bulletImage,pid,x,y,image_xscale,image_yscale,image_angle,c_white,1)


