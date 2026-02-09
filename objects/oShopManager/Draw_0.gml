draw_self()

draw_sprite(sUI, 0, positionx, positiony)
draw_set_font(global.font_main)

var mm = string(minutes);
if (minutes < 10) mm = "0" + mm;

draw_text(positionx + 10, positiony + 15,  string(hours) + ":" + string(mm))
draw_text(positionx + 10, positiony + 35, "den " + string(day))
draw_text(positionx + 10, positiony + 55, "rozpocet " + string(money))

var max_w = string_width(trend)
draw_text_ext_colour(242, 33, trend, 0, max_w, c_yellow, c_yellow, c_yellow, c_yellow, 1)

//rep pozadi
var _y = oShopManager.y + sprite_get_height(sReputation) + 8
var _w = 90
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
var _x = positionx + 98
_y -= 4
draw_sprite(sEmoji, subimg1, _x, _y)

_x += (sprite_get_width(sArrowRepUp) * 2) + 2
_y += 4
if (rep_change) {
	draw_sprite(sArrowRepUp, subimg, _x, _y)
} 

