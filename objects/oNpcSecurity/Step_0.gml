depth = -bbox_bottom

if (is_waiting) {
	if (walked == 2) {
		sprite_index = sprite_left
	} else {
		sprite_index = sprite_down
	}
	image_index = 0
	image_speed = 0
}

if (place_meeting(x + 16, y, oNpcThief)) {
	show_debug_message("dej honir x") 
}

if (place_meeting(x, y + 16, oNpcThief)) {
	show_debug_message("dej honir y")
}