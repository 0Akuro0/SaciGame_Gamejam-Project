// Codigo para quando objeto eh criado (variaveis globais e coisa do tipo) 
movespeed = 5;
hp = 100;
damage = 20;
alarm[0] = 4;
shotTime = 120; // tempo entre tiros
alarm[1] = shotTime;
iFrames = 40; 
invincible = false;
damageReduction = 0;

// Funcoes
function movement(){
	upkey = keyboard_check(vk_up) || keyboard_check(ord("W"));
	downkey = keyboard_check(vk_down) || keyboard_check(ord("S"));
	leftkey = keyboard_check(vk_left) || keyboard_check(ord("A"));
	rightkey = keyboard_check(vk_right) || keyboard_check(ord("D"));
	
	
	xDir = rightkey - leftkey;
	yDir = downkey - upkey;

	xspeed = movespeed * xDir;
	yspeed = movespeed * yDir;
	
	x += xspeed
	y += yspeed
	
	if(xDir > 0){image_xscale = abs(image_xscale)}
	else if (xDir < 0 ) {image_xscale = -abs(image_xscale)}
}

//
function takeDamage(damage){
	if (!invincible) {
		hp -= damage - (damage*damageReduction);	
		invincible = true;
		sprite_index = Saci_hurt;
	}
}
