if(instance_exists(player)){
	image_xscale = player.image_xscale

	x = player.x + distX * image_xscale;
	y = player.y
}else{
	instance_destroy()
}

