if (room == target_room && image_index < 1) {
	if(room == rComputer) {
		instance_create_depth(0, 0,-9999999, oComputer)
		
		oComputer.money = money
		oStocksSaving.alarm[0] = 1

	} else {
		oStocksSaving.alarm[1] = 1
		oShopManager.money = money
	}

	instance_destroy(self)
}