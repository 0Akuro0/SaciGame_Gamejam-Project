movement()
if (hp <= 0){
	instance_destroy();
	instance_deactivate_object(sling);
}
if (invincible) {
	iFrames--;
	if ((iFrames/5) % 2 == 0) {
		image_alpha = 0.3;
	} else {
		image_alpha = 1;
	}
	if (iFrames = 0) {
		iFrames = 40;
		invincible = false;
		image_alpha = 1;
		sprite_index = Saci;
	}
}
