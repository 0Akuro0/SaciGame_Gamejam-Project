var target = instance_place(x, y, enemy_father); // tipos de inimigos acertaveis)

if (target != noone) {
    target.dealDamage(damage);
    instance_destroy();
}

// bala eh destruida quando sai da tela
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

image_angle += 10; // rotaciona o sprite