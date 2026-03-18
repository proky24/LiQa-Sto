draw_self()

text = "Den: " + $"{day}"
var _x = (x + sprite_get_width(sUI)) - (string_width(text) / 2) 
var _y = y + (string_height(text) * 2)
draw_text(_x, _y, text)

/*   //////////////////////////////////////////////       */

text = "Profit: "
_x = x + 20
_y += (string_height(text) * 3)
draw_text( _x, _y, text)
if (profit < 0 ) {
	draw_set_colour(c_red)
} else {
	draw_set_colour(c_green)
}

_x += string_width(string(text))
draw_text(_x, _y ,string(profit) + "$")
draw_set_colour(c_white)

/*   //////////////////////////////////////////////       */

/*text = "Cena naskladneni: " + $"{minus}$"

_x += 20 + string_width(string(profit)) 
draw_text(_x, _y, text)

/*   //////////////////////////////////////////////       */

_x = x + 20
_y += (string_height(text) * 4)

text = "Ziskana reputace: " + $"{rep_gained}" +"   (" + $"{rep}" + " / " + $"{max_rep}" + ")"

draw_text(_x, _y, text)

/*   //////////////////////////////////////////////       */

_x = x + 20

if (illegal_sells == 1) {
	text = "Policie ma malinke podezreni"
} else if (illegal_sells <= 100) {
	text = "Policie si vsima neceho divneho"
} else {
	text = "Policie si pro tebe jde"
}
_y += (string_height(text) * 4)
draw_text(_x, _y, text)

/*   //////////////////////////////////////////////       */