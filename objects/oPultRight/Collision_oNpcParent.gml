//pokud už kasa je obsazena nebo NPC pouze prochází nic se neděje
if (collided || abs(other.target_x - x) > 1) {exit}
collided = true
npc = other

npc.walked ++
npc.is_waiting = true
npc.can_buy = true

oNpcParent.alarm[1] = 1 //aktualizujeme cesty ostatním NPC

