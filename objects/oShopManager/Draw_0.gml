draw_self()

draw_sprite(sUI, 0, positionx, positiony)
draw_set_font(global.font_main)

var mm = string(minutes);
if (minutes < 10) mm = "0" + mm;

draw_text(positionx + 10, positiony + 25,  string(hours) + ":" + string(mm))
draw_text(positionx + 10, positiony + 45, "Den " + string(day))
draw_text(positionx + 10, positiony + 65, "Rozpocet " + string(money))

var max_w = string_width(trend)
draw_text_ext_colour(242, 33, trend, 0, max_w, c_yellow, c_yellow, c_yellow, c_yellow, 1)

//rep pozadi
var _y = oShopManager.y + sprite_get_height(sReputation) + 8
var _w = 100
var _h = 8
draw_sprite_stretched(sReputation_1, 0, positionx, _y, _w, _h)

//actuall rep
 _w = _w * (rep / max_rep)
draw_sprite_stretched_ext(sReputation_1, 0, positionx, _y, _w, _h, c_aqua, 0.8)



var subimg1 = 0
if(rep / max_rep  < 0.5) {
	subimg1 = 0	
} else if (rep / max_rep < 0.7){
	subimg1 = 1
} else {
	subimg1 = 2
}
var _x = positionx + 108
_y -= 4
draw_sprite(sEmoji, subimg1, _x, _y)

_x += (sprite_get_width(sArrowRepUp) * 2) + 2
_y += 4
if (rep_change) {
	draw_sprite(sArrowRepUp, subimg, _x, _y)
} 

/*if(!opened && !called_police) {
	draw_sprite_ext(sUI, 0, 40, positiony, 1.5, 1.5, 0, c_white, 1)
	
	var minus = 0
	for (var p = 0; p < array_length(products); p++) {
		minus += products[p].image_index * products[p].buy_price
	}
	var profit = money - minus
	
	draw_self()

	text = "Den: " + $"{day}"
	_x = (45 + sprite_get_width(sUI) / 2) 
	_y = positiony + (string_height(text) * 2)
	draw_text(_x, _y, text)

	/*   //////////////////////////////////////////////       */

	/*text = "Profit: "
	_x = 50
	_y += (string_height(text) * 2.5)
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

	/*_x = 50
	_y += (string_height(text) * 4)

	text = "Ziskana reputace: " + $"{rep_gained}" +"   (" + $"{rep}" + " / " + $"{max_rep}" + ")"

	draw_text(_x, _y, text)

	/*   //////////////////////////////////////////////       */

	/*_x = 50

	if (illegal_sells >= 1) {
		text = "Policie ma malinke podezreni"
	} else if (illegal_sells <= 100) {
		text = "Policie si vsima neceho divneho"
	} else {
		text = "Policie si pro tebe jde"
	}
	_y += (string_height(text) * 3.5)
	draw_text(_x, _y, text)

	/*   //////////////////////////////////////////////       */
//}