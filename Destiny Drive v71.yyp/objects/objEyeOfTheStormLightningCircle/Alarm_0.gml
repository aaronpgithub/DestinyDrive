globalvar light_circle_bullet_angle, imind;
var wcb = 0;

if !instance_exists(objEyeOfTheStorm) exit;

repeat(16) {
	light_circle_bullet_angle = (wcb * 22.5) + objEyeOfTheStorm.light_random
	
	var bullet_light = instance_create(x + lengthdir_x(4, light_circle_bullet_angle), y + lengthdir_y(4, light_circle_bullet_angle), objEnemyBullet)
	
	with(bullet_light) {
		damage = 1
		angle = light_circle_bullet_angle
		spd = 2
		image_angle = angle
		
		sprite_index = sprSimpleLightning
	}
	
	wcb++
}

alarm[0] = 6
