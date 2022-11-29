/// @description Insert description here
// You can write your code in this editor
if bandit_2_burst > 0 {
	
	var bandit_2_bullet = instance_create(x - 28, y - 17, objEnemyBullet)
	
	with(bandit_2_bullet) {
		damage = 1
		spd = 2 * global.enemy_spd
		angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-7, 7)
		sprite_index = sprBanditBullet
	}
	
	champion_bullet(bandit_2_bullet)
	
	bandit_2_burst -= 1
	alarm[1] = 35
} else {
	bandit_2_burst = irandom_range(4, 12)
	alarm[1] = random_range(100, 190)
}