/// @description Insert description here
// You can write your code in this editor
alarm[5] = random_range(70, 100)

globalvar gangle, ganstl;
gangle = 0
ganstl = random_range(-20, -10)

repeat(8) {
		var imangry = instance_create(x, y, objEnemyBullet)
		
		with(imangry) {
			damage = 1
			angle = point_direction(x, y, objPlayer_x, objPlayer_y) + ganstl + gangle + 180
			spd = random_range(-2.5, -1.8) * global.enemy_spd
		}
		gangle += random_range(3, 8)
}