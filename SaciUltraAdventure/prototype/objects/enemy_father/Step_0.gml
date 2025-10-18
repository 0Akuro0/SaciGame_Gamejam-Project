var debugMessage = string(self.id) + " Health: " + string(self.health)
show_debug_message(debugMessage);

if (self.health <= 0){
	instance_destroy(self);
}