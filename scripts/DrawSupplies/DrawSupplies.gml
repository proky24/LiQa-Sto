function draw_supplies(){

	var height = sprite_get_height(sprite_index)
	if (sprite_index == sBeer ||sprite_index == sBeer_1) {height += 6}
	
	var _y =  y - (height * 1.2)
	
	var text = string(image_index) + "/" + string(max_supplies)
	draw_sprite(sSupply, 1, x, _y)
	draw_text(x - 6.5, _y - 4, text)
}