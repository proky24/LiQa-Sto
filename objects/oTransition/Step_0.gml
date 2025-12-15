if (room == target_room && image_index < 1) {
	if(room == rComputer) {
		instance_create_depth(0, 0,-9999999, oComputer)
		
		
		oComputer.money = money
		oComputer.alarm[0] = 1
		oStocksSaving.alarm[0] = 1
		//oBackSpace.player_x = player_x
		//oBackSpace.player_y = player_y
	} else {
		/*oPlayer.x = player_x
		oPlayer.y = player_y
		oPlayer.face = DOWN*/
	}

	instance_destroy(self)
}