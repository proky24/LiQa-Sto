	/*for (var p = 0; p < array_length(saved_order); p++) {
		if (saved_order[p] != 0) {
			oShopManager.products[p].image_index += saved_order[p]
		}
	}

*/

//vytvorime krabice se kterymi hrac muze interagovat a vymazeme ulozene objednavky
var i = 0
show_debug_message("what will you have in 500 years")
for (var p = 0; p < array_length(saved_order); p++) {
		if (saved_order[p] == 0) {
			i++
	}
}
if (i != 3){
	instance_create_depth(224, 112, -bbox_bottom, oBoxTop) 
	instance_create_depth(240, 120, -bbox_bottom, oBoxRight) 
	var cargo = instance_create_depth(224, 128, -bbox_bottom, oBoxDown) 
	cargo.cargo = saved_order

	saved_order = [0, 0, 0]
	saved_curr_stocks = []
	ordered = false
}