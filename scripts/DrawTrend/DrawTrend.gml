function draw_trend() {
	var _w = sprite_get_width(sprite_index)
	var _x = x - (_w / 2) 
	var _y = y - 4
	draw_sprite_stretched_ext(sReputation_1, 0, _x, _y, _w, 8, c_yellow, 0.5)
}