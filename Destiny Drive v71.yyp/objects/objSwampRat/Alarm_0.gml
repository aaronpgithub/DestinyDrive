/// @description Insert description here
// You can write your code in this editor
alarm[0] = 120

        globalvar swamprat;    
    
        for(swamprat = 7; swamprat >= 0; swamprat--)
        {
            var sr_dth_var = instance_create(x, y, objEnemyBullet)
            
            with(sr_dth_var)
            {
            spd = -2 * global.enemy_spd
            angle = -35 + (swamprat * 8.75)
            damage = 1
            
            image_angle = angle
            }
			
			champion_bullet(sr_dth_var)
        }
		
