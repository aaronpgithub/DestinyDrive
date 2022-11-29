var fire_turret_inst;

burst -= 1
    
    if burst > 0
    {
    alarm[7] = 8
        fire_turret_inst = instance_create(x - 7, y - 13, objEnemyBullet)
        
        with(fire_turret_inst)
        {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-3, 3)
        spd = 5 * global.enemy_spd
        damage = 1                      
                
        image_angle = angle
        }
        
        champion_bullet(fire_turret_inst)
    }


