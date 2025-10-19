// Codigo para quando objeto eh criado (variaveis globais e coisa do tipo) 
movespeed = 10;
hp = 100;
damage = 20;
alarm[0] = 4;
iFrames = 100;
invincible = false;

// Funcoes
function movement(){
	upkey = keyboard_check(vk_up);
	downkey = keyboard_check(vk_down);
	leftkey = keyboard_check(vk_left);
	rightkey = keyboard_check(vk_right);
	
	
	xDir = rightkey - leftkey;
	yDir = downkey - upkey;

	xspeed = movespeed * xDir;
	yspeed = movespeed * yDir;
	
	x += xspeed
	y += yspeed
	
	if(xDir > 0){image_xscale = 1}
	else if (xDir < 0 ) {image_xscale = -1}
}

//
function takeDamage(damage){
	if (!invincible) {
		hp -= damage	
		invincible = true;
	}
}
