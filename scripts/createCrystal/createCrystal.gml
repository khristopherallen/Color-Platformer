var color = argument0;
var x_ = argument1;
var y_ = argument2;

switch (color) {
	case 0:
		instance_create_layer(x_, y_, "Color_Crystals", oCrystalRed);
	break;
	case 1:
		instance_create_layer(x_, y_, "Color_Crystals", oCrystalGreen);
	break;
	case 2:
		instance_create_layer(x_, y_, "Color_Crystals", oCrystalYellow);
	break;
	case 3:
		instance_create_layer(x_, y_, "Color_Crystals", oCrystalBlue);
	break;
}