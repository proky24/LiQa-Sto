switch (level) {
	case 0:
		products = [oShelf, oBeer_1, oBeer]
	break;
	
	case 1:
		products = [oShelf, oBeer_1, oBeer, oCabinetDlvSkvost, oCabinetSpanikovice, oCabinetKralovskyMok]
		with (oBeer_1) {
			array_push(oShopManager.duplicate_products_Beer_1, id)
		}
		
		with (oBeer) {
			array_push(oShopManager.duplicate_products_Beer, id)
		}
	break;
	
	case 2:
		products = [oShelf, oBeer_1, oBeer, oCabinetDlvSkvost, oCabinetSpanikovice, oCabinetKralovskyMok, oCabinetPirateRum, oCabinetElixirTriPer, oCabinetDaPremiumShi]
		with (oBeer_1) {
			array_push(oShopManager.duplicate_products_Beer_1, id)
		}
		
		with (oBeer) {
			array_push(oShopManager.duplicate_products_Beer, id)
		}
		
		with (oShelf) {
			array_push(oShopManager.duplicate_products_Shelf, id)
		}
		
		with (oDlvSkvost) {
			array_push(oShopManager.duplicate_products_Dlv, id)
		}
		
		with (oKralovskyMok) {
			array_push(oShopManager.duplicate_products_Kralovsky, id)
		}
	break;
}

oStocksSaving.alarm[3] = 10
oProductParent.alarm[4] = 10

oSave.alarm[0] = 1