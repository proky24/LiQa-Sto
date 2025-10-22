if instance_exists(oDialog) {image_index = 0 exit}

var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var down = keyboard_check(vk_down) || keyboard_check(ord("S"));

xspd = (right - left) * moveSpd;
yspd = (down - up) * moveSpd;


if (place_meeting(x + xspd, y, [oCollision, oNpcParent])) {
		xspd = 0
}

if (place_meeting(x, y + yspd, [oCollision, oNpcParent])) {
	yspd = 0
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

x += xspd;
y += yspd;


depth = -bbox_bottom