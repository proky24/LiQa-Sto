if (room == target_room && image_index < 1) {
	if(room == rMain) {
		if (!instance_exists(oSave)) {
			instance_create_depth(0, 0, -9999999, oSave)
			oSave.alarm[1] = 1
			
			instance_create_layer(0, 0, "Instances", oStocksSaving)
			
			oShopManager.alarm[5] = 1
		}
	} else if(room == rIntermediateShop){
		if (!instance_exists(oSave)) {
			instance_create_depth(0, 0, -9999999, oSave)
			oSave.alarm[1] = 1
			
			instance_create_layer(0, 0, "Instances", oStocksSaving)
			
		}
		
		
	} else {
		game_restart()
		/*oShopManager.money = money
		oShopManager.fast_delivery = fast_delivery
		oShopManager.security_sub = security_sub
		oShopManager.alarm[2] = 1*/
	}

	instance_destroy(self)

}
