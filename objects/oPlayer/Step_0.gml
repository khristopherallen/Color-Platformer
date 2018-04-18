/// @description Player Movement

var keyRight = keyboard_check(ord("D"));
var keyLeft = keyboard_check(ord("A"));
var keyUp = keyboard_check(vk_space);
var inputH = (keyRight - keyLeft);

// gravity
if (!place_meeting(x, y + 1, oSolidParent)){
	speedV += gravity_;
	onGround = false;
} else {
	onGround = true;
}

// jumping
if (keyUp && onGround && canJump) {
	speedV = -jumpHeight;
}

if (keyUp) {
	canJump = false;
} else {
	canJump = true;
}

// acceleration
speedH += inputH * acceleration;
speedH = clamp(speedH, -maxSpeedH, maxSpeedH);
if (inputH == 0 && onGround){
	speedH = 0;
} 

// horizontal collisions
if (place_meeting(x+speedH, y, oSolidParent)) {
	speedH = 0;
}

// horizontal movement
x += speedH;

// vertical collisions
if (place_meeting(x, y+speedV, oSolidParent)) {
	while (!place_meeting(x, y+1, oSolidParent)) {
		y++;
	}
	speedV = 0;
}

// vertical movement
y += speedV;


