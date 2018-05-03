/// @description  

speedH = 0;
speedV = 0;
maxSpeedH = 2;
maxSpeedV = 5;
maxSpeedVWall = 4;
speedHWall = 6;
speedVWall = -5;
jumpHeight = 8;
gravity_ = 0.5;
gravityWall = 0.1;
acceleration = 0.25;
onGround = false;
canJump = true;
color = 0; // 0 = red, 1 = green, 2 = yellow, 3 = blue
dead = false;
onGround = false;
onWall = 0;
wallJumpDelay = 0;
maxWallJumpDelay = 17;

instance_create_layer(x, y, "Instances", oPlayerBox);
