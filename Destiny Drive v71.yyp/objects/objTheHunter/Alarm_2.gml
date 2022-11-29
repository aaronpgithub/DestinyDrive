/// @description Shotgun Blast

if attack_choice = 1 {
	alarm[2] = 25

	repeat(10) {
	var shotbun = instance_create(mid_x, mid_y, objEnemyBullet)

		with(shotbun) {
			spd = random_range(6, 7)
			angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-8, 8)
			damage = 1
			road_bounce = true
		}
	}
}