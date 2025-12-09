if (floor(x) > floor(xprevious)) {
	sprite_index = sprite_right
} 
if (floor(x) < floor(xprevious)) {
	sprite_index = sprite_left
}
if (floor(y) < floor(yprevious)) {
	sprite_index = sprite_up
}
if (floor(y) > floor(yprevious)) {
	sprite_index = sprite_down
}

