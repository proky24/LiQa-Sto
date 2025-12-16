if (distance_to_object(oPlayer) < 8 && array_length(cargo) != 0 && keyboard_check_pressed(input_key)) {
	for (var p = 0; p < array_length(cargo); p++) {
		if (cargo[p] != 0) {
			oShopManager.products[p].image_index += cargo[p]
		}
	}
	instance_destroy(oBoxTop)
	instance_destroy(oBoxRight)
	instance_destroy(self)
}