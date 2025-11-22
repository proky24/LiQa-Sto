//fade-in animace
image_alpha = lerp(image_alpha, 1, 0.03);

if (image_alpha > 0.99) {
    image_alpha = 1;
	image_speed = 1
	exit
} else {
	alarm[0] = 1
}