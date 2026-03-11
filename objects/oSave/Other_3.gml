var _room = room_get_name(room) 

if (_room == "rMain") {
	
	if(oShopManager.opened) {
		oShopManager.day --
		oShopManager.money -= oShopManager.money_gained
		oShopManager.rep -= oShopManager.rep_gained
	
		with (oProductParent) {
			image_index += sold
		}	
	}	
	
	save_game()
} else if(_room == "rPrison") {
	
}