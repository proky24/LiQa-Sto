if (yes) { 
	image_index += 2
} else {
	image_index ++
	npc.walked ++
}

npc.is_waiting = false
npc.alarm[2] = 1
alarm[1] = 60
