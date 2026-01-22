/*if (distance_to_object(oPlayer) < 8 && !showing) {
	showing = true

} 

if (distance_to_object(oPlayer) > 16) {
	showing = false
}*/

if(distance_to_object(oPlayer) < 8 && keyboard_check_pressed(vk_space) && oPlayer.invetory != 0 && oPlayer.invetory == id) {
	image_index ++
}