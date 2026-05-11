if (being_dragged) {
	if (mouse_x > x) {
		var _x = abs(x - mouse_x)
		var amount = _x / sprite_width
	
		amount = clamp(amount, 0, 1)
		amount_current = amount * 100
	} else {
		amount_current = 0
	}
	
}