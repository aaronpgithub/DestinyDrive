/// @description Insert description here
// You can write your code in this editor
if spiral_eggi = true {

	alarm[0] = 5

	globalvar spiral_angle_for_eggi, spiral_eggi_angle_var;
	spiral_angle_for_eggi = 0
	spiral_eggi_angle_var = spiral_eggi_angle
	repeat(5) {
		var eggi_spiral_bullet = instance_create(x, y, objEnemyBullet)
	
		with(eggi_spiral_bullet) {
			damage = 1
			angle = (spiral_angle_for_eggi * 72) + spiral_eggi_angle_var
			spd = 2 * global.enemy_spd
			image_angle = angle
		}
	
		champion_bullet(eggi_spiral_bullet)
	
		spiral_angle_for_eggi++
	}
	spiral_eggi_angle += 10
}