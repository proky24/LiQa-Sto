draw_self()
draw_set_colour(c_black)
var _y = y + (sprite_get_height(sprite_index) / 2)
draw_text(x + 64, _y, name)

if (curr_stock != -1) {
	draw_text(463, ordering_y, string(ordering))
}
draw_set_colour(c_white)