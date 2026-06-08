switch (level) {
	case 0:
		products = [oShelf, oBeer_1, oBeer]
	break;
	
	case 1:
		products = [oShelf, oBeer_1, oBeer, oCabinetDlvSkvost, oCabinetSpanikovice, oCabinetKralovskyMok]
		for (var p = 0; p < array_length(products); p++) {
			with (products[p]) {
				oShopManager.duplicate_count ++
				if (oShopManager.duplicate_count > 1) {
					struct = {_name: name, _id: id}
					array_push(oShopManager.duplicate_products, struct)
				}
			}
		}
	break;
	
	case 2:
		products = [oShelf, oBeer_1, oBeer, oCabinetDlvSkvost, oCabinetSpanikovice, oCabinetKralovskyMok, oCabinetPirateRum, oCabinetElixirTriPer, oCabinetDaPremiumShi]
		/*for (var p = 0; p < array_length(products); p++) {
			with (products[p]) {
				
				array_push(oShopManager.duplicate_products, struct)
			}
		}*/
	break;
}

oStocksSaving.alarm[3] = 10
oProductParent.alarm[4] = 10

oSave.alarm[0] = 1

show_debug_message(duplicate_products)