move_towards_point(x, target_y, slide_speed)

if (point_distance(x, y, x, target_y) < 1) {
    y = target_y;
    slide_speed = 0;
	show_debug_message("reached")
}