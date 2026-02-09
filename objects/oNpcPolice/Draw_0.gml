//vykreslíme ikonku pokud npc může nakupovat
if (can_buy && !instance_exists(oDialog)){
	draw_sprite(sAlert, 0, x, y - 30)
}
//draw_path(path, x, y, 1)

draw_self()