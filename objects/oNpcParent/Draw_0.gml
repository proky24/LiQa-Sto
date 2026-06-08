//vykreslíme ikonku pokud npc může nakupovat
if (can_buy && !instance_exists(oDialog)){
	if (age == 27) {
		draw_sprite(sAlert, 0, x, y - 31)
	} else {
		draw_sprite(sAlert, 0, x, y - 28)
	}
}
//draw_path(path, x, y, 1)

draw_self()