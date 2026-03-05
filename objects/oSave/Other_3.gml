if(oShopManager.opened) {
	oShopManager.day --
	oShopManager.money -= oShopManager.money_gained
	oShopManager.rep -= oShopManager.rep_gained
}	

save_game()

