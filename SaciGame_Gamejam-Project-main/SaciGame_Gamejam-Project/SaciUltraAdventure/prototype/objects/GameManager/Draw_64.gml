draw_set_halign(fa_left)

draw_text(32, 32, "Health");
if (instance_exists(player)){
	var str = string(player.hp)	
	draw_text(32, 48, str)	
}

var view_midw = surface_get_width(application_surface)/2;

draw_text(view_midw, 32, showTimerString);

if (pauseCapture) {
	if (surface_exists(pauseSurface)) {
		surface_free(pauseSurface);
	}
	var width = surface_get_width(application_surface);
	var height = surface_get_height(application_surface);
	pauseSurface = surface_create(width, height);
	
	surface_set_target(pauseSurface);
	draw_surface(application_surface, 0, 0);
	surface_reset_target();
	instance_deactivate_all(true); 
	
	pauseCapture = false;
}

if (isPaused && surface_exists(pauseSurface)) {
	draw_surface(pauseSurface, 0, 0);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(room_width / 2, room_height / 2, "PAUSED");
} else {
	// Normal drawing goes here when not paused
	draw_self(); // Or your game objects/UI
}
