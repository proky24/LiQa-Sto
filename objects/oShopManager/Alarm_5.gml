switch (level) {
	case 0:
		products = [oShelf, oBeer_1, oBeer]
	break;
	
	case 1:
		products = [oShelf, oBeer_1, oBeer, oCabinetDlvSkvost, oCabinetSpanikovice, oCabinetKralovskyMok]
	break;
	
	case 2:
		products = [oShelf, oBeer_1, oBeer, oCabinetDlvSkvost, oCabinetSpanikovice, oCabinetKralovskyMok, oCabinetPirateRum, oCabinetElixirTriPer, oCabinetDaPremiumShi]
	break;
}

oStocksSaving.alarm[3] = 10
oProductParent.alarm[4] = 10

oSave.alarm[0] = 1