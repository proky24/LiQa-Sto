if (yes) { 
	image_index += 2
	yes = false
} else {
	image_index ++
	npc.walked ++
	show_debug_message("walked")
}
show_debug_message(npc.waypoints[npc.walked])
npc.is_waiting = false
npc.alarm[2] = 1
alarm[1] = 60
