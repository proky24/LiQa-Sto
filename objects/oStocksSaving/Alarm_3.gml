level = oShopManager.level
show_debug_message(string(level) + " vypni to nazvuc to")
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
	break;
}