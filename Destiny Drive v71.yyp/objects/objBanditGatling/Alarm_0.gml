/// @description Insert description here
// You can write your code in this editor
if burst > 0 {
	
	globalvar burst_pos;
	burst_pos = (burst / burst_max) * 0.9
	
	var bandit_1_bullet = instance_create(x - 24, y - 12, objEnemyBullet)
	
	with(bandit_1_bullet) {
		damage = 1
		spd = -4 * global.enemy_spd
		angle = (random_range(-2, 2) * (4 - (4 * burst_pos)))
		sprite_index = sprBanditBullet
	}
	
	champion_bullet(bandit_1_bullet)
	
	burst -= 1
	alarm[0] = ceil(15 * burst_pos)
} else {
	burst = irandom_range(50, 70)
	burst_max = burst
	alarm[0] = random_range(150, 220)
}