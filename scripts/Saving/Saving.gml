function save_game() {
	var fileP = file_text_open_write("savedProducts.txt")
	var fileM = file_text_open_write("savedManager.txt")
	
	var array_products = []
	
	with (oProductParent) {
		var struct = {
			x: x,
			y: y,
			image_index: image_index,
			object: object_get_name(object_index)
		}
		
		array_push(array_products, struct)
		show_debug_message(array_products)
	}
	
	
	var _string = json_stringify(array_products)
	
	file_text_write_string(fileP, _string)
	
	file_text_close(fileP)
	
	
	
	var _shopManager = ""
	
	var struct = {
		x: oShopManager.x,
		y: oShopManager.y,
		day: oShopManager.day,
		money: oShopManager.money,
		delivery_day: oShopManager.delivery_day,
		rep: oShopManager.rep,
		trend: oShopManager.trend,
		trend_p: oShopManager.trend_p,
		end_trend_day: oShopManager.end_trend_day,
		arrested_times: oShopManager.arrested_times,
		illegal_sells: oShopManager.illegal_sells,
	}
	_shopManager = struct		
	show_debug_message(_shopManager)

	
	_string = json_stringify(_shopManager)
	
	file_text_write_string(fileM, _string)
	
	file_text_close(fileM)
}

function load_game() {
	if file_exists("savedProducts.txt") {
		var file = file_text_open_read("savedProducts.txt")
		
		var _json = file_text_read_string(file)
		
		var array_products = json_parse(_json)
		
		instance_destroy(oProductParent)
		
		for (var i = 0; i < array_length(array_products); i ++) {
			
			var struct = array_products[i]
			
			instance_create_layer(struct.x, struct.y, "Instances", asset_get_index(struct.object), struct)
		}
		file_text_close(file)
	}

	if file_exists("savedManager.txt") {
		var file = file_text_open_read("savedManager.txt")
		var _json = file_text_read_string(file)
		
		var struct = json_parse(_json)
		
		instance_destroy(oShopManager)
		
		instance_create_layer(struct.x, struct.y, "Instances", oShopManager, struct)	
		
		file_text_close(file)
	}	
		
}