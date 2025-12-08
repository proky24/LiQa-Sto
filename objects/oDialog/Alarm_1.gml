if (page < page_number - 1) {
	npc_id.page = page 
	npc_id._x = textbox_x
	npc_id.offsetX = text_box_x_offset[page]
	npc_id._y = textbox_y
	npc_id.alarm[4] = 120
	
	exit
	/*draw_sprite_ext(sWall, 1, 50, 60, 2, 3, 0, 0, 1)
	show_debug_message("obcanka")
	exit*/
}

alarm[1] = 1