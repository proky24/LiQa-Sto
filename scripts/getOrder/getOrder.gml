
function get_order(){ //ulozime objednavku a typ  dopravy
	for (var p = 0; p < array_length(oStocksSaving.stock_products); p++) {
			oStocksSaving.saved_order[p] += oStocksSaving.stock_products[p].ordering
	}
	fast_delivery = oDelivery.fast_delivery
}