if (room == target_room && image_index < 1) {
	if(room == rComputer) {
		instance_create_depth(0, 0,-9999999, oComputer)
		
		oComputer.money = money
		oComputer.previous_money = money  // promenna kterou pouzivame pro zdurazneni ze hrac ma neco v kosiku
		oStocksSaving.alarm[2] = 1		
	} else {
		//oShopManager.money = money
		//oShopManager.fast_delivery = fast_delivery
		//oShopManager.alarm[2] = 1
	}

	instance_destroy(self)
}