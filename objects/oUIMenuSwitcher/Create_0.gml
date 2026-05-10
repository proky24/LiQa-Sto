visible = false

depth = -999

x = room_width / 2
y = room_height / 2 

image_xscale = 4.5
image_yscale = 6

function toggle_ig_menu() {
	if (visible) {
		var _y = y - sprite_get_height(sButtonResume) * 2
		instance_create_depth(x, _y, -9999, oButtonResume)

		_y = oButtonResume.y + sprite_get_height(sButtonResume) * 2
		instance_create_depth(x, _y, -9999, oButtonIGSettings)

		_y = oButtonIGSettings.y + sprite_get_height(sButtonResume) * 2
		instance_create_depth(x, _y, -9999, oButtonMainMenu)
	}
	
	else {
		with (oButtonParent) {
			instance_destroy()
		}
	}
}