/// @description  

speedH = 0;
speedV = 0;
maxSpeedH = 4;
maxSpeedV = 8;
maxSpeedVWall = 8;
speedHWall = 6;
speedVWall = -5;
jumpHeight = 7;
gravity_ = 1;
gravityWall = 0.2;
acceleration = 0.5;
onGround = false;
canJump = true;
color = 0; // 0 = red, 1 = green, 2 = yellow, 3 = blue
dead = false;
onGround = false;
onWall = 0;
wallJumpDelay = 0;
maxWallJumpDelay = 17;

instance_create_layer(x, y, "Instances", oPlayerBox);
