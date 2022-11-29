var wisp_inst;

burst -= 1
    
    if burst > 0
    {
    alarm[7] = 17
        wisp_inst = instance_create(x - 7, y - 13, choose(objEnemyBullet, objWispBullet, objWispBullet, objWispBullet))
        
        with(wisp_inst)
        {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-3, 3)
        
            if object_index = objWispBullet
            {
            spd = 2 * global.enemy_spd
            }
            else
            {
            spd = 3 * global.enemy_spd
            }
        
        damage = 1
                
        image_angle = angle
        }
        
        champion_bullet(wisp_inst)
    }


