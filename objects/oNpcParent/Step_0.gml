//pokud existuje objekt oDialog a je směrován na NPC
if(instance_exists(oDialog) && oDialog.npc_id == id) {
	stop()
	exit
}

//volání dialogů pokud je hráč blízko a zmáčkne input_key
if (distance_to_object(oPlayer) < 16 && keyboard_check_pressed(input_key) && !instance_exists(oDialog)) {
	if (can_buy) {
		create_textbox(buy_dialog, id)
	} else {
		create_textbox(dialog, id)
		set_opposite_sprite(oPlayer.face)
		path_delete(path)
	}
}

if (is_waiting) {
	stop()
	exit
}

//pokud NPC došlo k target_x a target_y aktualizuje si cestu 
if (point_distance(x, y, target_x, target_y) < 2) {
	loop()
}

depth = -bbox_bottom
