/// @description Insert description here
// You can write your code in this editor
if cough_burst > 0 {
#region	
	if cough_burst = 3 aim_dir = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-7, 7)

	globalvar adrir;
	adrir = aim_dir
	
	var cob = instance_create(x, y, objEnemyBullet)
	
	with(cob) {
		damage = 1
		spd = 2
		angle = adrir
		sprite_index = sprBanditBullet
	}
	
	cough_burst--
	
	alarm[0] = 3
	
	champion_bullet(cob)
#endregion
} else {
	alarm[0] = irandom_range(90, 130)
	cough_burst = 3
}