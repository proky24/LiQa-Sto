//zastavíme NPC
if (other.queue_pos == queue_pos) {
	other.sprite_index = other.sprite_up
	other.image_index = 0
	other.queue_pos = queue_pos
	npc = other
	alarm[0] = 1
}