if (queue_pos == 0) {
	if (path_exists(path)) path_delete(path);
	path = path_add();
	target_x = waypoints[walked].x
	target_y = waypoints[walked].y + 8
	mp_grid_path(grid, path, x, y, target_x, target_y, 0);
	path_start(path, move_speed, path_action_stop, true);
	oNpcParent.alarm[1] = 2*60
}