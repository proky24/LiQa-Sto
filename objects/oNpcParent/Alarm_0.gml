if (walked){
	
	target_x = oWaypointKasa.x
	target_y = oWaypointKasa.y
	
	loop()
	
} else {
	
	target_x = oWaypoint.x
	target_y = oWaypoint.y

	loop()
}


function loop() {
	path_delete(path)
	path = path_add()
	
	mp_grid_path(grid, path, x, y, target_x, target_y, 1)
	path_start(path, move_speed, path_action_stop, 1)

	alarm[0] = 10
}