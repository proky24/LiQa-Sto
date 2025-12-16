if (previous_money != money) { // pri kazdem plus / minus eventu se pricitaji / odecitaji penize 
	oCart.image_index = 1		// pokud penize nejsou stejne jako byly znamena to ze je neco v kosiku
} else {
	oCart.image_index = 0
}