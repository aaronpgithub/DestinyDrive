var turret_car_inst;

burst -= 1
    
    if burst > 0
    {
    alarm[7] = 17
        turret_car_inst = instance_create(x - 7, y - 13, objEnemyBullet)
        
        with(turret_car_inst)
        {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-3, 3)
        spd = 4 * global.enemy_spd
        damage = 1                      
                
        image_angle = angle
        }
        
        champion_bullet(turret_car_inst)
    }


