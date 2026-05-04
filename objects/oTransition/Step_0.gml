if (room == target_room && image_index < 1) {
	if(room == rComputer) {
		instance_create_depth(0, 0,-9999999, oComputer)
		
		oComputer.money = money
		oComputer.previous_money = money  // promenna kterou pouzivame pro zdurazneni ze hrac ma neco v kosiku
		oStocksSaving.security_sub = security_sub
		oStocksSaving.alarm[2] = 1		
	} else if(room == rIntermediateShop){
		file_delete("savedProducts.txt")
		file_delete("savedOrder.txt")
		file_delete("savedRoom.txt")
		load_game()
		
		oShopManager.money = money
		oShopManager.level = 1
		oStocksSaving.level = 1
	} else {
		oShopManager.money = money
		oShopManager.fast_delivery = fast_delivery
		oShopManager.security_sub = security_sub
		oShopManager.alarm[2] = 1
	}

	instance_destroy(self)

}
