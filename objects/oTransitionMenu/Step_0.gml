if (room == target_room && image_index < 1) {
		if (room == rMenu) {
			game_restart()
		} else {
			if (!instance_exists(oSave)) {
			instance_create_depth(0, 0, -9999999, oSave)
			oSave.alarm[1] = 1
			
			instance_create_layer(0, 0, "Instances", oStocksSaving)
			
			oShopManager.alarm[5] = 1
			oMusicManager.alarm[0] = 1
		}
	}

	instance_destroy(self)

}
