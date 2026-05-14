function save_curr_stock(){
	for (var p = 0; p < array_length(oShopManager.products); p++) { 
		var curr_stock = 0
		with (oShopManager.products[p]) {
			curr_stock += image_index
		}
		/*if (oShopManager.products[p] == oBeer) {
			with (oBeer) {
				curr_stock += image_index
			}
		} else if (oShopManager.products[p] == oBeer_1) {
			with (oBeer_1) {
				curr_stock += image_index
			}
		} else {
				curr_stock = oShopManager.products[p].image_index
		}*/
		oStocksSaving.saved_curr_stocks[p] = curr_stock
		show_debug_message(oStocksSaving.saved_curr_stocks)
		show_debug_message(oShopManager.products[p])
	}
}
