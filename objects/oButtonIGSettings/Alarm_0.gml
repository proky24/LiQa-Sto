var _x = oButtonResume.x 
var _y = oButtonResume.y + 25

instance_create_depth(_x, _y, -99999, oSlider)

_x = oButtonIGSettings.x 
_y = oButtonIGSettings.y + 25

var sfx = instance_create_depth(_x, _y, -99999, oSlider)
sfx.setting = "sfx"

with (oSlider) {
	alarm[0] = 1
}

_x = oButtonMainMenu.x - sprite_get_width(sButtonApply) / 1.5
_y = oButtonMainMenu.y

with (oButtonParent) {
	instance_destroy()
}


instance_create_depth(_x + 32, _y, -99999, oButtonApply)

