npc1 = other.id
if (npc1.thief) {
	alarm[1] = 1
	
} 
//fade-out animace
other.image_alpha = lerp(other.image_alpha, 0, 0.1);
	if other.image_alpha == 0 {
		instance_destroy(other);
		oShopManager.spawned --
}

