function draw_supplies(){
	var height = sprite_get_height(sprite_index)
	if (sprite_index == sBeer ||sprite_index == sBeer_1) {height += 6}
	
	var _x_scale = 1
	var text = string(image_index) + "/" + string(max_stock)
	var _y =  y - (height * 1.2)
	var _x = x - 6.5
	
	if (sprite_index == sCabinetDlvSkvost || sprite_index == sCabinetSKralovskyMok || sprite_index == sCabinetSpanikovice ) {height -= 6}
	if (sprite_index == sCabinetDlvSkvost) { 
		_x_scale = string_width(text) / 11
		_x -= 1
	}
	
	
	draw_sprite_ext(sSupply, 1, x, _y, _x_scale, 1, 0, c_white, 1)
	draw_text(_x, _y - 4, text)
}