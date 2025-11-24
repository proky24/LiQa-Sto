function loop() {
	if(is_waiting) {exit} //pokud NPC čeká nic se neděje
		if (path_exists(path)) path_delete(path);
		path = path_add();
		

		if(oPultRight.collided == true && walked == array_length(waypoints) - 2) { //pokud má NPC namířeno ke kase a kasa je obsazená
			target_x = oWaypoint.x
			target_y = oWaypoint.y 	+ 8
		} else {
			target_x = waypoints[walked].x
			target_y = waypoints[walked].y + 8
		}
		
		mp_grid_path(grid, path, x, y, target_x, target_y, 0);
		path_start(path, move_speed, path_action_stop, true);
}

function stop() {
	if(can_buy || is_waiting) {
		sprite_index = sprite_up
	} else {
		switch (oPlayer.face) {
		case 0:
			sprite_index = sprite_left
			break;
		case 2:
			sprite_index = sprite_right
			break;
		case 1:
			sprite_index = sprite_down
			break;
		case 3:
			sprite_index = sprite_up
			break;	
	}
	}
	
	

	image_index = 0	
}

/// @param p_sprite
function set_opposite_sprite(p_sprite) {
	
}