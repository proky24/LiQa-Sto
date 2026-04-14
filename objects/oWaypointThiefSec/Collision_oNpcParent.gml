//zastavíme NPC
if (!collided && abs(other.target_x - x) < 1) {
	collided = true
	other.alarm[3] = 1
	other.is_waiting = true
}