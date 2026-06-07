if (distance_to_object(oPlayer) < 8 && array_length(cargo) != 0 && keyboard_check_pressed(input_key)) {
	for (var p = 0; p < array_length(cargo); p++) {
		if (cargo[p] != 0) {
			with (oShopManager.products[p]) {
				oBoxDown.count++
				oBoxDown.ids[oBoxDown._p] = id
				oBoxDown._p ++
			}
			if (count > 1) {

				var _cargo = cargo[p] 
				
				for (var q = 0; q < array_length(ids); q++) {
					if (_cargo > 0) {
						//show_debug_message(string(_cargo) + " cargo")
						var max_stock = ids[q].max_stock - ids[q].image_index
						//show_debug_message(string(max_stock) + " max_Stock")
						var stock = clamp(_cargo, ids[q].image_index, max_stock)
						//show_debug_message(string(ids[q]) + " produkt " + string(ids[q].image_index))
						ids[q].image_index += stock
						//show_debug_message(string(stock) + " stock")
						_cargo -= stock
					}
				}
				ids = []
				_p = 0
				count = 0
				
			} else {
				oShopManager.products[p].image_index += cargo[p]
			}
		}
	}
	instance_destroy(oBoxTop)
	instance_destroy(oBoxRight)
	instance_destroy(self)
	oShopManager.alarm[4] = 60

}