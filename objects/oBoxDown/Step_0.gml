if (distance_to_object(oPlayer) < 8 && array_length(cargo) != 0 && keyboard_check_pressed(input_key)) {
	for (var p = 0; p < array_length(cargo); p++) {
		if (cargo[p] != 0) {
			if (oShopManager.products[p] == oBeer_1 && cargo[p] >= 6) {
				with (oBeer_1) {
					if (image_index < 6) {
						image_index += clamp(cargo[p], 0, maxstock)
						cargo[p] -= image_index
					}
				}
			} else if (oShopManager.products[p] == oBeer && cargo[p] >= 6) {
				with (oBeer) {
					if (image_index < 6) {
						image_index += clamp(cargo[p], 0, maxstock)
						cargo[p] -= image_index
					}
				}
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