// Inherit the parent event
event_inherited();

oSave.alarm[0] = 1 
instance_destroy(oSave)
instance_destroy(oStocksSaving)

oUIMenuSwitcher.alarm[0] = 22

instance_create_depth(0, 0, -999999, oTransitionMenu) 
oTransitionMenu.target_room = rMenu
