function loop() {
	if(is_waiting) {exit} //pokud NPC čeká nic se neděje
		if (path_exists(path)) path_delete(path);
		path = path_add();
		
		//pokud má NPC namířeno ke kase a kasa je obsazená
		if(oPultRight.collided == true && walked == array_length(waypoints) - 2 && !returning) { 
			target_x = oWaypoint.x
			target_y = oWaypoint.y + 8
		} else {
			target_x = waypoints[walked].x
			target_y = waypoints[walked].y + 8
		}
		
		mp_grid_path(grid, path, x, y, target_x, target_y, 0);
		path_start(path, move_speed, path_action_stop, true);
}

function stop() {
	if(thief && caught) {
		show_debug_message("bitch prilezla zpet")
		switch (oNpcSecurity.sprite_index) {
			case oNpcSecurity.sprite_down:
				sprite_index = sprite_up
			break;
			
			case oNpcSecurity.sprite_up:
				sprite_index = sprite_down
			break;
			
			case oNpcSecurity.sprite_left:
				sprite_index = sprite_right
			break;
			
			case oNpcSecurity.sprite_right:
				sprite_index = sprite_left
			break;
		}
	}
	
	if(can_buy || is_waiting) {
		sprite_index = sprite_up
	} 
	
	image_index = 0	
}
