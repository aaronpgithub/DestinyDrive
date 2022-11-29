/// @description Shooting at you
// You can write your code in this editor
alarm[7] = 20

var aim_mutt = instance_create(x - 43, y - 29, objEnemyBullet)

with(aim_mutt) {
	damage = 1
	angle = point_direction(x, y, objPlayer_x, objPlayer_y)
	spd = 5 * global.enemy_spd
	image_angle = angle
}

if instance_exists(objMiniCaravan) {
	with(objMiniCaravan) {
		var aim_mutt2 = instance_create(x, y, objEnemyBullet)

		with(aim_mutt2) {
			damage = 1
			angle = point_direction(x, y, objPlayer_x, objPlayer_y)
			spd = 5 * global.enemy_spd
			image_angle = angle
		}
	}
}