//zastavíme NPC
if (!collided) {
	collided = true
	other.sprite_index = other.sprite_down
	other.image_index = 0
	other.walked = 1
	other.alarm[1] = 60
}