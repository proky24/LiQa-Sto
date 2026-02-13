function get_in_prison(){
	oShopManager.rep = 0
	oShopManager.arrested_times ++
	
	oShopManager.day += oShopManager.arrested_times
	if (oShopManager.day = oShopManager.end_trend_day) {set_trend()}
	oShopManager.hours = 8
	oShopManager.minutes = 0
	
	oShopManager.opened = false
	oShopManager.image_index = 0
	
	oPultRight.collided = false
}