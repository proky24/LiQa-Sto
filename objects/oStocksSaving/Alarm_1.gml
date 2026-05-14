	/*for (var p = 0; p < array_length(saved_order); p++) {
		if (saved_order[p] != 0) {
			oShopManager.products[p].image_index += saved_order[p]
		}
	}

*/

//vytvorime krabice se kterymi hrac muze interagovat a vymazeme ulozene objednavky
var i = 0
for (var p = 0; p < array_length(saved_order); p++) {
		if (saved_order[p] == 0) {
			i++
	}
}

if(i == recap_trigger[level]) {
	oShopManager.alarm[4] = 90	
} else {
	instance_create_depth(224, 112, -bbox_bottom, oBoxTop) 
	instance_create_depth(240, 120, -bbox_bottom, oBoxRight) 
	var cargo = instance_create_depth(224, 128, -bbox_bottom, oBoxDown) 
	cargo.cargo = saved_order

	alarm[3] = 1
	saved_curr_stocks = []
	ordered = false
}