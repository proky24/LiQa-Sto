// Inherit the parent event
event_inherited();

with (oButtonParent) {
	instance_destroy()
}

instance_create_depth(320, 94, -9999, oButtonPlay)
instance_create_depth(320, 160, -9999, oButtonNewGame)
instance_create_depth(320, 226, -9999, oButtonExit)