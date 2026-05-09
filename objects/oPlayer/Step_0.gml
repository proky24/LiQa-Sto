if instance_exists(oDialog) || oUIMenuSwitcher.visible {image_index = 0 exit}

var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("A"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));

xspd = (right - left);
yspd = (down - up);

if(xspd != 0 && yspd != 0) {
	/*var len = point_distance(0, 0, xspd, yspd) 
	xspd /= len 
	yspd /= len*/
	image_index = 0 exit
}

if (place_meeting(x + xspd, y, [oCollision, oDoor])) {
	xspd = 0
}

if (place_meeting(x, y + yspd, [oCollision, oDoor])) {
	yspd = 0
}

if (distance_to_object(oPultRight) < 1 && keyboard_check_pressed(ord("S"))) {
	face = DOWN
}

if (yspd == 0){
	if (xspd > 0) face = RIGHT
	if (xspd < 0) face = LEFT
}

if (xspd == 0){
	if (yspd > 0) face = DOWN
	if (yspd < 0) face = UP
}


if (xspd = 0 && yspd = 0) {
	image_index = 0
}


sprite_index = sprites[face]

x += xspd  * move_speed;
y += yspd  * move_speed;


depth = -bbox_bottom