draw_self()

var _x = x + 3
var _text = "Hlasitost " + setting
var _y = y - sprite_get_height(sSlider) - string_height(_text)
draw_text(_x, _y, _text)

var knob_amount = amount_current / amount_max

var knob_x = x + (sprite_width * knob_amount)

draw_sprite(sKnob, 0, knob_x, y)


/*var _w = amount_current 
draw_sprite_stretched_ext(sSlider, 0, x, y - 4, _w, 8, c_aqua, 0.8)*/