draw_set_halign(fa_left)

draw_text(32, 32, "Health");
if (instance_exists(player)){
	var str = string(player.hp)	
	draw_text(32, 48, str)	
}
