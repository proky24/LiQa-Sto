if (yes) { 
	image_index += 2
	yes = false
} else {
	image_index ++
	npc.walked ++
}
npc.total_spend = 0
npc.is_waiting = false
npc.alarm[2] = 1
alarm[1] = 60
