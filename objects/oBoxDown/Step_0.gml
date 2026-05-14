if (distance_to_object(oPlayer) < 8 && array_length(cargo) != 0 && keyboard_check_pressed(input_key)) {
	for (var p = 0; p < array_length(cargo); p++) {
		if (cargo[p] != 0) {
			with (oShopManager.products[p]) {
				oBoxDown.count++
			}
			if (count > 1 && cargo[p] > oShopManager.products[p].max_stock) {
				var max_stock = oShopManager.products[p].max_stock
				
				with (oShopManager.products[p]) {
					oBoxDown.ids[oBoxDown._p] = id
					oBoxDown._p ++
					show_debug_message(oBoxDown.ids)
				}
				
					var stock = cargo[p] 
					max_stock -= oShopManager.products[p].image_index
					stock = clamp(stock, oShopManager.products[p].image_index, max_stock)
					show_debug_message(string(stock) + " for " + string(oShopManager.products[p]))
				
				/*for (var q = 0; q < array_length(ids); q++) {
					var stock = cargo[p] 
					stock = clamp(stock, 0, max_stock)
					show_debug_message(string(stock))
					ids[q].image_index = cargo[p]
					cargo[p] -= ids[q].image_index
				}*/
				
			} else {
				oShopManager.products[p].image_index += cargo[p]
			}
		}
	}
	instance_destroy(oBoxTop)
	instance_destroy(oBoxRight)
	instance_destroy(self)
	//oShopManager.alarm[4] = 60
}