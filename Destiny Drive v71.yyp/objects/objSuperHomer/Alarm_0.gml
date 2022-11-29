/// @description Insert description here
// You can write your code in this editor
alarm[0] = 120

repeat(7) {
	var hmo = instance_create(mid_x, mid_y, objEnemyHomingBullet)
	
	with(hmo) {
		spd = random_range(2.6, 4)
		angle = random_range(-50, 50) + 180
		damage = 1
		slowdown = true
		distance = 100
	}
}