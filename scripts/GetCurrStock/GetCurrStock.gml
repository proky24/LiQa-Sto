function get_curr_stock(){
	for (var p = 0; p < array_length(saved_curr_stocks); p++) {
		stock_products[p].curr_stock += saved_curr_stocks[p]
		stock_products[p].max_stock -= stock_products[p].curr_stock
	}
}