function save_curr_stock(){
	for (var p = 0; p < array_length(oShopManager.products); p++) { 
		var curr_stock = 0
		with (oShopManager.products[p]) {
			curr_stock += image_index
		}
		
		oStocksSaving.saved_curr_stocks[p] = curr_stock
		
	}
}
