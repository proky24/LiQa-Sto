for (var p = 0; p < array_length(saved_order); p++) {
	if (saved_order[p] != 0) {
		stock_products[p].curr_stock += saved_order[p]
		ordered = true
	}
}

if (ordered) {
	if (fast_delivery) {
		oDelivery.image_alpha = 0.7
		oDelivery.disabled = true
		oDelivery.fast_delivery = fast_delivery
	}
	
	
}

alarm[0] = 1