function draw_supplies(){
	var height = sprite_get_height(sprite_index)
	if (sprite_index == sBeer ||sprite_index == sBeer_1) {height += 6}
	
	var _y =  y - (height * 1.2)
	var _x = x - 6.5
	
	var text = string(image_index) + "/" + string(max_stock)
	draw_sprite(sSupply, 1, x, _y)
	draw_text(_x, _y - 4, text)
	
	/*text = name
	max_w = string_width(text)
	_x -= string_width(text) / 2.5
	_y -= sprite_get_height(sSupply) + 2
	draw_text(_x, _y, text)*/
	
}