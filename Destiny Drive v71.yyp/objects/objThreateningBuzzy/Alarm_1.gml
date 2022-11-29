/// @description shooting


var inst, inst2, inst3;

burst -= 1

    if burst > 0
    {
    alarm[1] = 15
    
        inst = instance_create(x - 31, y - 8, objBanditBullet)
        inst2 = instance_create(x - 31, y - 8, objBanditBullet)
        inst3 = instance_create(x - 31, y - 8, objBanditBullet)
        
            with(inst)
            {
            angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-1, 1)
            spd = 2.2 * global.enemy_spd
            damage = 1       
                    
            image_angle = angle
            }
            
            with(inst2)
            {
            angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-1, 1) + 14
            spd = 2.2 * global.enemy_spd
            damage = 1       
                    
            image_angle = angle
            }
            
            with(inst3)
            {
            angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-1, 1) - 14
            spd = 2.2 * global.enemy_spd
            damage = 1       
                    
            image_angle = angle
            }
            
            champion_bullet(inst)
            champion_bullet(inst2)
            champion_bullet(inst3)
    }

