if (image_alpha == 0) {exit}
draw_self()
draw_set_colour(c_black)
var _y = y + (sprite_get_height(sprite_index) / 2) 
var _x = x + 64


draw_text(_x, _y, name)

draw_set_colour(c_white)