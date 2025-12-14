if (room == target_room && image_index < 1) {
	if(room == rComputer) {
		instance_create_depth(0, 0,-9999999, oComputer)
		oComputer.idk = money
		oComputer.alarm[0] = 1
		
		//oBackSpace.player_x = player_x
		//BackSpace.player_y = player_y
	} else {
		//instance_create_depth(player_x, player_y, -bbox_bottom,oPlayer)

	}

	instance_destroy(self)
}