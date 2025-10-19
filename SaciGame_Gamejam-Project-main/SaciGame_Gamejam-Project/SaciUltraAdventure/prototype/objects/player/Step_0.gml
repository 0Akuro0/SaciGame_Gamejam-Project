movement()
if (hp <= 0){
	instance_destroy();
}
if (invincible) {
	iFrames -= 1;
	if ((iFrames/5) % 2 == 0) {
		image_alpha = 0.3;
	} else {
		image_alpha = 1;
	}
	if (iFrames = 0) {
		iFrames = 100;
		invincible = false;
		image_alpha = 1;
	}
}
