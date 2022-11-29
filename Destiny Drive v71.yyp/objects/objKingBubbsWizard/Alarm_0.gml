/// @description Insert description here
// You can write your code in this editor

if !instance_exists(objKingBubbs) {
	alarm[1] = 1
	exit;
}

if wizard_leave = false {
	switch(wizard_attack_choice) {
		case 1:
			if wizard_burst > 0 {
				instance_create(random_range(10, 160), random_range(road_y_min, road_y_max), objWizardCircle)
				
				wizard_burst--
				
				alarm[0] = 10
			}
		break;
		#region
		case 2:
		globalvar wiz_c_ang;
		wiz_c_ang = wizard_chosen_angle;
		
		var wz = -1;
				
			repeat(2) {
				var wizard_burst_bullet = instance_create(x + lengthdir_x(wz * 10, wiz_c_ang + 90), y + lengthdir_y(wz * 10, wiz_c_ang + 90), objEnemyBullet)
			
					with(wizard_burst_bullet) {
						damage = 1
						spd = 4 * global.enemy_spd
						angle = wiz_c_ang
						image_angle = angle
						sprite_index = sprIllusionBullet
					}
				wz += 2
			}
			
				alarm[0] = 2
			
				if wizard_burst > 0 {
					wizard_burst--
				} else {
					wizard_burst = 5
					wizard_chosen_angle = random_range(187, 232)
					aim = -(aim)
					
					if aim = -1 wizard_chosen_angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-8, 8)
				}
		break;
		#endregion
		case 3:
			instance_create(16, road_y_min, objWizardLaser)
			instance_create(190, road_y_max, objWizardLaser)
		break;
	}
}