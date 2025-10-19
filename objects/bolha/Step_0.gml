var inst = collision_rectangle(self.bbox_left, self.bbox_top, self.bbox_right, self.bbox_bottom, player, false, false);

if (inst != noone){
	show_debug_message("Hit Player")
	inst.takeDamage(self.damage)
}
// bala eh destruida quando sai da tela
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

image_angle = direction + 180; // angulo correto