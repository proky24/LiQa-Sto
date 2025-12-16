	/*for (var p = 0; p < array_length(saved_order); p++) {
		if (saved_order[p] != 0) {
			oShopManager.products[p].image_index += saved_order[p]
		}
	}

*/

instance_create_depth(224, 112, -bbox_bottom, oBoxTop) 
instance_create_depth(240, 120, -bbox_bottom, oBoxRight) 
var cargo = instance_create_depth(224, 128, -bbox_bottom, oBoxDown) 
cargo.cargo = saved_order

