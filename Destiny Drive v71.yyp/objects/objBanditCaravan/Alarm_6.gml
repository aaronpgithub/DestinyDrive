/// @description Blast
// You can write your code in this editor
		for(var tired = 0; tired < 20; tired++) {
			var blast = instance_create(x - 43, y - 29, objEnemyBullet)
			
			with(blast) {
				angle = -55 + (5.5 * tired) + random_range(-1, 1)
				damage = 1
				spd = -2.3 * random_range(0.9, 1) * global.enemy_spd
				image_angle = angle
			}
		}
		
		if transition_amount >= security_transition {
			with(objMiniCaravan) {
				alarm[8] = 45
			}
		}
		
		attack_choice = 0
		wait = true
		alarm[1] = room_speed * 2
		alarm[0] = -1
		
		if transition_amount >= security_transition alarm[1] = room_speed * 3