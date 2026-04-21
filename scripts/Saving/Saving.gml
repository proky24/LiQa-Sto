function save_game() {
	var fileP = file_text_open_write("savedProducts.txt")
	var fileM = file_text_open_write("savedManager.txt")
	var fileO = file_text_open_write("savedOrder.txt")
	
	var array_products = []
	
	with (oProductParent) {
		var struct = {
			x: x,
			y: y,
			image_index: image_index,
			object: object_get_name(object_index)
		}
		
		array_push(array_products, struct)
		//show_debug_message(array_products)
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
	//show_debug_message(_shopManager)

	
	_string = json_stringify(_shopManager)
	
	file_text_write_string(fileM, _string)
	
	file_text_close(fileM)
	
	////////////////////////////////////
	var array_order = []
	
	array_order = oStocksSaving.saved_order
	//show_debug_message(array_order)
	
	_string = json_stringify(array_order)
	
	file_text_write_string(fileO, _string)
	
	file_text_close(fileO)
	
}

function load_game() {
	
	if file_exists("savedRoom.txt"){
		var fileR = file_text_open_read("savedRoom.txt")
		var _json = file_text_read_string(fileR)
		
		var _string = json_parse(_json)
		
		if (_string == rooms_ref[1]) {
			room_goto(rooms_ref[0])			
		} else {
			room_goto(_string)
		}
		
		file_text_close(fileR)
	}
	
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
		
		var shopManager = instance_create_layer(struct.x, struct.y, "Instances", oShopManager)
		
		shopManager.day = struct.day
		shopManager.money = struct.money
		shopManager.delivery_day = struct.delivery_day
		shopManager.rep = struct.rep
		shopManager.trend = struct.trend
		shopManager.trend_p = struct.trend_p
		shopManager.end_trend_day = struct.end_trend_day
		shopManager.arrested_times = struct.arrested_times
		shopManager.illegal_sells = struct.illegal_sells
		
		file_text_close(file)
	}	
	
	if file_exists("savedOrder.txt") {
		var file = file_text_open_read("savedOrder.txt")
		var _json = file_text_read_string(file)
		
		var order = json_parse(_json)
		
		instance_destroy(oStocksSaving)
		
		var stocksSaving = instance_create_layer(0, 0, "Instances", oStocksSaving)
		
		stocksSaving.saved_order = order
		
		file_text_close(file)
	}
}

function save_room() {
	for (var p = 0; p < array_length(rooms); p++) {
		var room_curr = room_get_name(room)

		if (room_curr == rooms[p]) {
			_room = rooms_ref[p]
		}
	}
	
	var fileR = file_text_open_write("savedRoom.txt")
	
	var _string = json_stringify(_room)
	
	file_text_write_string(fileR, _string)
	
	file_text_close(fileR)
}	