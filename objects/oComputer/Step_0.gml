if (previous_money != money && !oCart.handeling || oContract.image_index == 1 && !oCart.handeling ) { // pri kazdem plus / minus eventu se pricitaji / odecitaji penize 
	oCart.image_index = 1		// pokud penize nejsou stejne jako byly znamena to ze je neco v kosiku
} else if (!oCart.handeling){
	oCart.image_index = 0
}