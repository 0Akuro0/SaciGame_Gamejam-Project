startGameTimer = current_time
gameTimer = 0;

time_seconds = 0;
time_minutes = 0;
time_hours = 0;

showTimerString = ""

// tempo para proxima carta
nextCardTimer = 10


// Variavel pra quando jogo estiver sendo ativamente jogado (nao mostrando cartas ou em pause)
canPlay = true

isPaused = false;
pauseCapture = false
pauseSurface = -1;

// Pause Cartas
cardPause = false

total_time_seconds = 0

layer_set_visible("CardLayer", false);

// funcoes
function countTimer(){ // chamada em step
	if(canPlay){
	total_time_seconds += delta_time / 1000000
	time_seconds = total_time_seconds mod 60
	total_time_minutes = total_time_seconds div 60
	time_minutes = total_time_minutes mod 60
	time_hours = total_time_minutes div 60

	var secString = (time_seconds < 10 ? "0" : "") + string(floor(time_seconds))
	var minString = (time_minutes < 10 ? "0" : "") + string(time_minutes)
	var hourString = (time_hours < 10 ? "0" : "") + string(time_hours)

	showTimerString = hourString +":"+ minString +":"+ secString;
	}
}

function pause(){
	if(isPaused) {
		createPauseSurface();
	}else{
		instance_activate_all();
		if(surface_exists(pauseSurface)){
			surface_free(pauseSurface);	
		}
	}
}



// UI Functions
function createPauseSurface(){
	// desativa a tela e cria um desenho do que estava sendo mostrado
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
}

function drawPauseSurface(){
	 // apos tudo ser desativado e o desenho ser criado, mostre so esse desenho
		draw_surface(pauseSurface, 0, 0);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_white);
		draw_text(room_width / 2, room_height / 2, "PAUSED");
}