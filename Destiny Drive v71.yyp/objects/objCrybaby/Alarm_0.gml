/// @description Insert description here
// You can write your code in this editor
alarm[0] = 25

	var cap = random_range(5, 200);
	
	if objPlayer_x > 200 {
		random_range(5, objPlayer_x)
	}
	
	var dragon = instance_create(cap, random_range(-14, 0), objCrybabyBullet) 

	with(dragon) {
		spd = -random_range(1, 1.7)
		angle = 90 + random_range(-8, 8)
	}

	champion_bullet(dragon)