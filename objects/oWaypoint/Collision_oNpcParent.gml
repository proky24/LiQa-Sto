//zastavíme NPC
if (abs(other.target_x - x) < 1 && !collided) {
	other.sprite_index = other.sprite_up
	other.image_index = 0
	collided = true
	other.queue_pos = queue_pos
	npc = other
	alarm[0] = 1
}