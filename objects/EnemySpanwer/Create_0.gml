spawn_timer = 0;
spawn_int = 120; // tempo entre spawns
spawn_type = 100; // tipos de inimigos spawnaveis, numero alto =  inimigoa mais fortes

function spawn_enemy() {
	var margin = 100;
	var side = irandom(3);
	
	switch (side) {
		case 0: // cima
			x_pos = view_xview[0] + irandom(view_wview[0]);
			y_pos = view_yview[0] - margin;
			break;
		case 1: // baixo
			x_pos = view_xview[0] + irandom(view_wview[0]);
            y_pos = view_yview[0] + view_hview[0] + margin;
            break;
		case 2: // esquerda
			x_pos = view_xview[0] - margin;
            y_pos = view_yview[0] + irandom(view_hview[0]);
            break;
		case 3: // direita
			x_pos = view_xview[0] + view_wview[0] + margin;
            y_pos = view_yview[0] + irandom(view_hview[0]);
            break;
	}
	
	instance_create_layer(x_pos, y_pos, "Instances", pick_enemy());
	//instance_create_layer(x_pos, y_pos, "Instances", mrFrog2);
}

function pick_enemy() {
	var i = irandom(spawn_type);
	if (i <= 10) {
		return mrFrog;
	} else if (i > 10 && i <= 40) {
		return mrFrog3;
	} else {
		return mrFrog2;
	}
}