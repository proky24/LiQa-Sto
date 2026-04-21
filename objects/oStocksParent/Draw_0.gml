draw_self() 
if(image_alpha == 0) {exit}
draw_set_colour(c_black)
var _y = y + (sprite_get_height(sprite_index) / 2) 
var _x = x + 64


draw_text(_x, _y, name)

var name_width = string_width(name)
_x += name_width + 32
var text = string(curr_stock) + "/" + string(max_buy)
draw_text(_x, _y, text)

if (curr_stock != -1) {
	draw_text(463, ordering_y, string(ordering))
}
draw_set_colour(c_white)