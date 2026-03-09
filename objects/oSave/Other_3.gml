if(oShopManager.opened) {
	oShopManager.day --
	oShopManager.money -= oShopManager.money_gained
	oShopManager.rep -= oShopManager.rep_gained
	
	with (oProductParent) {
		image_index += sold
	}
}	



save_game()

