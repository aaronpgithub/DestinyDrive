/// @description Insert description here
// You can write your code in this editor
		globalvar nottired;
		
		for(nottired = 0; nottired < 15; nottired++) {
			var blast = instance_create(x, y, objEnemyBullet)
			
			with(blast) {
				angle = (-20 + 5.5 * nottired) * sign(point_direction(x, y, 0, road_y_mid) - 180) + random_range(-1, 1)
				damage = 1
				spd = -2.7 * random_range(0.9, 1) * global.enemy_spd
				image_angle = angle
			}
		}