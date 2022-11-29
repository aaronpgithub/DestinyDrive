/// @description Insert description here
// You can write your code in this editor
if burst >= 0 {
	alarm[5] = 10
		var imangry = instance_create(x, y, objEnemyBullet)
		
		with(imangry) {
			damage = 1
			angle = point_direction(x, y, objPlayer_x, objPlayer_y) + 180
			spd = -3 * global.enemy_spd
			image_angle = angle
		}
		burst -= 1
} else alarm[6] = 150