if (self.health <= 0){
	instance_destroy(self);
}

var inst = collision_rectangle(self.bbox_left, self.bbox_top, self.bbox_right, self.bbox_bottom, player, false, false);

if (inst != noone){
	show_debug_message("Hit Player")
	inst.takeDamage(self.damage)
}
