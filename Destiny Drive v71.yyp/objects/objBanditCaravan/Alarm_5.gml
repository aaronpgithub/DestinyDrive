/// @description Bullet rain
// You can write your code in this editor
alarm[5] = 100

if attack_choice = 6 alarm[5] = 5

if transition_amount < 1 or transition_timer > 0 exit; 

var security_bullet = instance_create(random_range(5, 190), 0, objEnemyBullet)

with(security_bullet) {
	damage = 1
	angle = 90 + random_range(-5, 5)
	spd = -3 * global.enemy_spd
	image_angle = angle
	sprite_index = sprSecurityBullet
}