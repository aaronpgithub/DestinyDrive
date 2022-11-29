/// @description Insert description here
// You can write your code in this editor
alarm[0] = 25

        globalvar swamprat, swampratinnac;
		
		swampratinnac = point_direction(x, y, objPlayer_x, objPlayer_y) + 180
    
        for(swamprat = 7; swamprat >= 0; swamprat--)
        {
            var sr_dth_var = instance_create(x, y, objEnemyBullet)
            
            with(sr_dth_var)
            {
            spd = -2.4 * global.enemy_spd
            angle = -35 + (swamprat * 8.75) + swampratinnac
            damage = 1
            
			sprite_index = sprGhostBullet
			
            image_angle = angle
            }
			
			champion_bullet(sr_dth_var)
        }
		