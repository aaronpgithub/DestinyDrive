/// @description Insert description here
// You can write your code in this editor
alarm[5] = 15

globalvar tired, blastang;

blastang = random_range(-7, 7)
		
for(tired = 0; tired < 12; tired++) {
	var blast = instance_create(x - 32, y - 10, objEnemyBullet)
			
	with(blast) {
		angle = -40 + (6.6 * tired) + random_range(-1, 1) + blastang + point_direction(x, y, objPlayer_x, objPlayer_y) + 180
		damage = 1
		spd = -2.5 * random_range(0.9, 1) * global.enemy_spd
		image_angle = angle
	}
}