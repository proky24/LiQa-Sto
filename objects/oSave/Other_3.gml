var _room = room_get_name(room) 

if (_room == "rMain" || _room == "rIntermediateShop" ) {
	
	if(oShopManager.opened) {
		oShopManager.day --
		oShopManager.money -= oShopManager.money_gained
		oShopManager.rep -= oShopManager.rep_gained
	
		with (oProductParent) {
			if(sold < 0) {
				image_index -= sold
			} else {
				image_index += sold
			}
		}	
	}	
	
	save_game()
} 