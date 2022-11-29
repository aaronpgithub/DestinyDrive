var swturret_car_inst;

globalvar ang_or, ang_shot_at, ang_inacc;
ang_or = angle_orientation
ang_shot_at = angle_shoot_at
ang_inacc = angle_inacc

burst -= 1
    
    if burst > 0
    {
    alarm[7] = 8
        swturret_car_inst = instance_create(x - 7, y - 13, objEnemyBullet)
        
        with(swturret_car_inst)
        {
        angle = ang_shot_at + (ang_inacc * ang_or)
        spd = 2.5 * global.enemy_spd
        damage = 1                      
                
        image_angle = angle
        }
        
		angle_orientation *= -1
		angle_inacc += 5
		
        champion_bullet(swturret_car_inst)
    }


