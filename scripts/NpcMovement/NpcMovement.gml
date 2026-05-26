function loop() {
	if(is_waiting) {exit} //pokud NPC čeká nic se neděje
		if (path_exists(path)) path_delete(path);
		path = path_add();
		var queue_waypoints = oShopManager.queue_waypoints[oShopManager.level].queue
		
		//pokud má NPC namířeno ke kase a kasa je obsazená
		if(oPultRight.collided && walked == array_length(waypoints) - 2 && !returning) { 
			if (oShopManager.level < 1) {
				target_x = oWaypoint.x
				target_y = oWaypoint.y + 8
			} else {
				for (var p = 0; p < array_length(queue_waypoints); p++) {
					if (!queue_waypoints[p].collided && queue_waypoints[p].queue_pos < queue_pos) {
						target_x = queue_waypoints[p].x
						target_y = queue_waypoints[p].y + 8
					} 
				}
			}
			
		} else {
			target_x = waypoints[walked].x
			target_y = waypoints[walked].y + 8
		}
		
		mp_grid_path(grid, path, x, y, target_x, target_y, 0);
		path_start(path, move_speed, path_action_stop, true);
}

function stop() {
	if(thief && caught) {
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
		image_index = 0
		exit
	}
	
	if(can_buy || is_waiting) {
		sprite_index = sprite_up
	} 
	
	image_index = 0	
}
