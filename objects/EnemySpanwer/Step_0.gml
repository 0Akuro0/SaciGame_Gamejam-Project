spawn_timer--;
if (spawn_timer <= 0) {
	spawn_timer = spawn_int;
	spawn_enemy();
}