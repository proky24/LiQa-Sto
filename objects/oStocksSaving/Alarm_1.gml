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

if (level > 0) {
	other_boxes_offset._x = -16
	show_debug_message(other_boxes_offset._x)
}

if(i == recap_trigger[level]) {
	oShopManager.alarm[4] = 90	
} else {
	instance_create_depth(cargo_box_cor[level]._x, cargo_box_cor[level]._y - other_boxes_offset._y, -bbox_bottom, oBoxTop) 
	instance_create_depth(cargo_box_cor[level]._x + other_boxes_offset._x, cargo_box_cor[level]._y - (other_boxes_offset._y / 2), -bbox_bottom, oBoxRight) 
	var cargo = instance_create_depth(cargo_box_cor[level]._x, cargo_box_cor[level]._y, -bbox_bottom, oBoxDown) 
	cargo.cargo = saved_order

	alarm[3] = 1
	saved_curr_stocks = []
	ordered = false
}