/// @description Insert description here
// You can write your code in this editor
if bandit_1_burst > 0 {
	
	var bandit_1_bullet = instance_create(x - 24, y - 12, objEnemyBullet)
	
	with(bandit_1_bullet) {
		damage = 1
		spd = 2 * global.enemy_spd
		angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-7, 7)
		sprite_index = sprBanditBullet
	}
	
	champion_bullet(bandit_1_bullet)
	
	bandit_1_burst -= 1
	alarm[0] = 35
} else {
	bandit_1_burst = irandom_range(4, 12)
	alarm[0] = random_range(100, 190)
}