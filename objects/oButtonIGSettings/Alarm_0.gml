var _x = oButtonMainMenu.x - sprite_get_width(sButtonApply) / 1.5
var _y = oButtonMainMenu.y

with (oButtonParent) {
	instance_destroy()
}

instance_create_depth(_x, _y, -99999, oButtonApply)

_x += _x / 4.5
instance_create_depth(_x, _y, -99999, oButtonCancel)