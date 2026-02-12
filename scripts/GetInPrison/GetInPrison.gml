function get_in_prison(){
	oShopManager.rep = 0
	oShopManager.arrested_times ++
	
	oShopManager.day += oShopManager.arrested_times
}