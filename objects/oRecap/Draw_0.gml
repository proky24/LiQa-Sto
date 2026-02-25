draw_self()

text = "Den: " + $"{day}"
var _x = (x + sprite_get_width(sUI)) - (string_width(text) / 2) 
var _y = y + (string_height(text) * 2)
draw_text(_x, _y, text)

text = "Profit: "
_x = x + (string_width(text) / 1.5)
_y += (string_height(text) * 2)
draw_text( _x, _y, text)
if (profit < 0 ) {
	draw_set_colour(c_red)
} else {
	draw_set_colour(c_green)
}

_x += string_width(string(text)) 
draw_text(_x, _y ,string(profit))
draw_set_colour(c_white)


if (day = 1) {
	rep_gained = max_rep - rep
} else {
	rep_gained = rep - rep_gained
}
text = "Ziskana reputace: " + $"{rep_gained}"

_x += 20
draw_text(_x, _y, text)