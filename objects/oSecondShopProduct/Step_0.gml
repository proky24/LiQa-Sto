if (image_alpha == 0) {
	buy.image_alpha = 0
} else if (instance_exists(oStocksSaving) && oStocksSaving.level >= 1) {
	buy.image_alpha = 0.85
}else {
	buy.image_alpha = 1
}