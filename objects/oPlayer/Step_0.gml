/// @description Player Movement

var keyRight = keyboard_check(ord("D"));
var keyLeft = keyboard_check(ord("A"));
var keyUp = keyboard_check(vk_space);
var inputH = (keyRight - keyLeft);

// friction
if (inputH == 0){
	speedH += sign(speedH)*-1*acceleration;	
}

oPlayerBox.x = x;
oPlayerBox.y = y;

if (!dead) {
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
	if (inputH == 0 && onGround){
		speedH = 0;
	} 

	// horizontal collisions
	if (place_meeting(x+speedH, y, oSolid)) {
		speedH = 0;
	}
	
	// check if on wall
	onWall = place_meeting(x+1, y, oSolid) - place_meeting(x-1, y, oSolid);
	
	// wall jump
	if (onWall != 0 && !onGround && keyUp) {
		speedH = -onWall*speedHWall;
		speedV = speedVWall;
	}
	
	// gravity 
	if (!place_meeting(x, y + 1, oSolid)){
		speedV += gravity_;
		onGround = false;
	} else {
		onGround = true;
	}
	
	// vertical collisions
	if (place_meeting(x, y+speedV, oSolid)) {
		if (speedV > 0){
			while (!place_meeting(x, y+1, oSolid)) {
				y++;
			}
		}
		speedV = 0;
	}
	
	//// calculate vertical movement
	//var finalGravity = gravity_;
	//var finalMaxSpeedV = maxSpeedV;
	//if (onWall != 0 && speedV > 0) {
	//	finalGravity = gravityWall;
	//	finalMaxSpeedV = maxSpeedVWall;
	//}

	// current position status
	if (onGround) {
		jumpHeight = 7;
	}
	
	// clamp speeds
	speedH = clamp(speedH, -maxSpeedH, maxSpeedH);
	speedV = clamp(speedV, -maxSpeedV, maxSpeedV);
	
	// movement
	y += speedV;
	x += speedH;
}

