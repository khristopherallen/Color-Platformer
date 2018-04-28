/// @description  

speedH = 0;
speedV = 0;
maxSpeedH = 4;
maxSpeedV = 8;
maxSpeedVWall = 4;
speedHWall = 4;
speedVWall = -3;
jumpHeight = 7;
gravity_ = 1;
gravityWall = 0.2;
acceleration = 1;
onGround = false;
canJump = true;
color = 0; // 0 = red, 1 = green, 2 = yellow, 3 = blue
dead = false;
onGround = false;
onWall = 0;

instance_create_layer(x, y, "Instances", oPlayerBox);
