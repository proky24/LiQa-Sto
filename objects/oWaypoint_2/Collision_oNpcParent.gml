//zastavíme NPC
if (abs(other.target_x - x) < 1){
	other.sprite_index = other.sprite_down
	other.image_index = 0
	collided = true
	other.queue_pos = queue_pos
}