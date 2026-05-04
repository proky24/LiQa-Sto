level = 1
stock_products = []
_room = 0
switch (level) {
	case 0:
		_room = rMain
		stock_products = [oLiverOfFlame, oBeerC, oBeerC1]
	break;
	
	case 1:
		_room = rIntermediateShop
		stock_products = [oLiverOfFlame, oBeerC, oBeerC1, oDlvSkvost, oSpanikovice, oKralovskyMok]
	break;
	
	case 2:
	break;
}
saved_curr_stocks = []


saved_order = [0, 0, 0]
ordered = false

security_sub = false

