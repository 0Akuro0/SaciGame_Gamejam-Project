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



// funcoes
function countTimer(){ // chamada em step
	if(canPlay){
	var total_time_seconds = (current_time - startGameTimer) div 1000
	var total_time_minutes = time_seconds div 60

	time_hours = total_time_minutes div 60
	time_minutes = total_time_minutes mod 60
	time_seconds = total_time_seconds mod 60

	var secString = (time_seconds < 10 ? "0" : "") + string(time_seconds)
	var minString = (time_minutes < 10 ? "0" : "") + string(time_minutes)
	var hourString = (time_hours < 10 ? "0" : "") + string(time_hours)

	showTimerString = hourString +":"+ minString +":"+ secString;
	}
}

function showCards(){
	// interromper jogo
	canPlay = false;
	instance_deactivate_all(true);
	alarm[0] = 100;
	
	// Mostrar cartas
		
	//
	

	// novo timer
	nextCardTimer += 10;
}


function pause(){
	if(!isPaused) {
		isPaused = true;
		var width = surface_get_width(application_surface);
		var height = surface_get_height(application_surface);
		pauseSurface = surface_create(width, height);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
		
		instance_deactivate_all(true); 
	}else{
		isPaused = false
		instance_activate_all();
		if(surface_exists(pauseSurface)){
			surface_free(pauseSurface);	
		}
	}
}