draw_self()

draw_sprite(sUI, 0, positionx, positiony)
draw_set_font(global.font_main)

draw_text(positionx + 10, positiony + 15, "cas " + string(hours) + ":" + string(minutes))
draw_text(positionx + 10, positiony + 35, "den " + string(day))
draw_text(positionx + 10, positiony + 55, "rozpocet " + string(money))

var max_w = string_width(trend)
draw_text_ext_colour(242, 33, trend, 0, max_w, c_yellow, c_yellow, c_yellow, c_yellow, 1)
