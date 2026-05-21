level = oShopManager.level
switch (level) {
	case 0:
		_room = rMain
		stock_products = [oLiverOfFlame, oBeerC, oBeerC1]
		saved_order = [0, 0, 0]
	break;
	
	case 1:
		_room = rIntermediateShop
		stock_products = [oLiverOfFlame, oBeerC, oBeerC1, oDlvSkvost, oSpanikovice, oKralovskyMok]
		saved_order = [0, 0, 0, 0, 0, 0]
	break;
	
	case 2:
		_room = rExpertShop
		stock_products = [oLiverOfFlame, oBeerC, oBeerC1, oDlvSkvost, oSpanikovice, oKralovskyMok, oPirateRum, oElixirTriPer, oDaPremiumShi]
		saved_order = [0, 0, 0, 0, 0, 0, 0, 0, 0]
	break;
}
