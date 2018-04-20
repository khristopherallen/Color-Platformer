/// @description  

color = oPlayer.color;

switch (color) {
	case 0:
		//red
		colorObject = oSolidRed;
	break;
	case 1:
		//green
		colorObject = oSolidGreen;
	break;
	case 2:
		//yellow
		colorObject = oSolidYellow;
	break;
	case 3:
		//blue
		colorObject = oSolidBlue;
	break;
}

if (place_meeting(x, y, colorObject)) {
	oPlayer.dead = true;
}