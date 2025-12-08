if (page == page_number - 1) {
	
	var id_height = sprite_get_height(npc_id.card_id)
	var id_width = sprite_get_width(npc_id.card_id)

	_x = textbox_x + potrait_x_offset[page]
	_y = textbox_y - (id_height) - 2

	var id_card = instance_create_depth(_x, _y, -bbox_bottom, oNpcId)
	id_card.sprite_index = npc_id.card_id 
	exit
}

alarm[1] = 120