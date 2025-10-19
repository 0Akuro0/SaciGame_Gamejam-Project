// timer do tiro
var b = instance_create_layer(x, y, "Instances", tiro);
b.direction = point_direction(x, y, mouse_x, mouse_y);
alarm[1] = shotTime;