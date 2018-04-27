/// @description  
if (point_distance(x, y, oPlayer.x, oPlayer.y) >= oPlayerBox.sprite_height*1.5) {
	isActive = true;
	image_alpha = 1;
} else {
	alarm[0] = 10;
	image_alpha = 0.5;
}