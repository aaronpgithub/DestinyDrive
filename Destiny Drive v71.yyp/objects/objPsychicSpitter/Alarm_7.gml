var turret_car_inst;

burst -= 1
    
    if burst > 0
    {
    alarm[7] = 6
        turret_car_inst = instance_create(mid_x, mid_y, objEnemyHomingBullet)
        
        with(turret_car_inst)
        {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-3, 3)
        spd = 5 * global.enemy_spd
        damage = 1                
		sensitivity = 0.15
		distance = 100
                
        image_angle = angle
        }
        
        champion_bullet(turret_car_inst)
    }


