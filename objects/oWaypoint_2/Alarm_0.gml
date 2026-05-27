if (instance_exists(npc) && distance_to_object(npc) > 8) {
	collided = false
	npc = noone
	show_debug_message("collided falseeeeeeeeeee")
} else {
	alarm[0] = 15
}
