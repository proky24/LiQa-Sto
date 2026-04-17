depth = -bbox_bottom

if (is_waiting && !handeling) {
	if (walked == 2) {
		sprite_index = sprite_left
	} else {
		sprite_index = sprite_down
	}
	image_index = 0
	image_speed = 0
}

if (handeling) {
	image_index = 0
	image_speed = 0
}

if (collision_circle(x, y - 8, 10, oNpcThief, false, true) && oNpcThief.stealing && !handeling) {
	handeling = true
	path_end()
	is_waiting = true

	oNpcThief.alarm[6] = 1
	
	
	
	alarm[7] = 180
}
