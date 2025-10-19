if(instance_exists(player)) {
	var px = player.x;
	var py = player.y;
	
	var b = instance_create_layer(x, y, "Instances", bolha);
	b.image_xscale = 0.5;
	b.image_yscale = 0.5;
	b.direction = point_direction(x, y, px, py);
}
alarm[1] = 120;