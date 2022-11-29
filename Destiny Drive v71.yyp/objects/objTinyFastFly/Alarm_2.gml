alarm[2] = 8

globalvar fly_x, fly_y;

fly_x = x
fly_y = y

        if shoot = true
        {
            var inst = instance_create(x, y, objBanditBullet)
            
            with(inst)
            {
            angle = 0
            image_angle = random(360)
            spd = -3.5 * global.enemy_spd
            damage = 1
            motion_set(angle, spd)
            
            spawner = sprTinyFastFly
            spawner_x = fly_x
            spawner_y = fly_y
            }
        }

