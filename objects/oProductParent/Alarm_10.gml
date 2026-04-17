if (product_duplicate(npc) && prev_img_index != 1) { 
	npc.walked += 2	
	image_index += 2
	sold -= 2
} else {
	image_index ++
	sold --
	if(npc.security) {
		inventory = 0
		walked = 0
	} else {
		npc.walked ++
	}
}

npc.total_spend = 0
npc.is_waiting = false
npc.alarm[2] = 1
alarm[1] = 60
