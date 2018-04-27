/// @description  

if (isActive) {
	show_debug_message("active");
	createCrystal(oPlayer.color, x, y);
	oPlayer.color = type;
	instance_destroy();
}