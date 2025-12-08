if (yes) { 
	image_index += 2
} else {
	image_index ++
	npc.walked ++
}

npc.is_waiting = false
npc.alarm[6] = 1
alarm[1] = 60
