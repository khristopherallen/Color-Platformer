/// @description  

speedH = 0;
speedV = 0;
maxSpeedH = 4;
jumpHeight = 10;
gravity_ = 1;
acceleration = 0.5;
onGround = false;
canJump = true;
color = 0; // 0 = red, 1 = green, 2 = yellow, 3 = blue
dead = false;


instance_create_layer(x, y, "Instances", oPlayerBox);
