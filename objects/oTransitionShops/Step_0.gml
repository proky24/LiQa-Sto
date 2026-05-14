if (room == target_room && image_index < 1) {
	// if(room == rIntermediateShop){
		file_delete("savedProducts.txt")
		file_delete("savedOrder.txt")
		file_delete("savedRoom.txt")
			
		instance_create_layer(0, 0, "Instances", oStocksSaving)
		instance_create_layer(0, 0, "Instances", oSave)
	
		load_game()
		oShopManager.money = money
		
		if (room == rIntermediateShop) {	
			oShopManager.level = 1
		} else {
			oShopManager.level = 2
		}
		
		
		oShopManager.alarm[5] = 1
	//} else {
		//potom
	//}

	instance_destroy(self)

}
