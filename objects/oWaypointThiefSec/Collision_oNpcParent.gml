//zastavíme NPC
if (!collided && abs(other.target_x - x) < 1) {
	collided = true
	other.is_waiting = true
}