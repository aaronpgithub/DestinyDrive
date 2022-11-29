var pbl_car_inst;

    alarm[7] = 60
        pbl_car_inst = instance_create(x - 7, y - 13, objEnemyBullet)
        
        with(pbl_car_inst)
        {
        angle = choose(-10, 10, 5, -5, 0)
        damage = 1                      
		spd = -2.25 * global.enemy_spd
		sprite_index = sprBlasterBullet
        image_angle = angle
        }
        
        champion_bullet(pbl_car_inst)

