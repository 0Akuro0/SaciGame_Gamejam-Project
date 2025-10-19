var angle = point_direction(player.x, player.y, mouse_x, mouse_y); // angulo
var dist = 50; // distancia do centro do player

x = player.x + lengthdir_x(dist, angle);
y = player.y + lengthdir_y(dist, angle);

direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = direction;

// codiogo pra rotacionar o sprite
if (angle > 90 && angle < 270) {
	image_yscale = -1;
} else {
	image_yscale = 1;
}

