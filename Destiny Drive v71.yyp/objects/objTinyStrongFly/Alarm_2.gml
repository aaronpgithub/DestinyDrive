alarm[2] = 24

globalvar fly_x, fly_y, idid;

fly_x = x
fly_y = y
idid = id

            var inst = instance_create(x, y, objEnemyFollowBullet)
            
            with(inst)
            {
            angle = 0
            image_angle = random(360)
            spd = -1.7 * global.enemy_spd
            damage = 1
            motion_set(angle, spd)
            ID = idid
            
            spawner = sprTinyStrongFly
            spawner_x = fly_x
            spawner_y = fly_y
            }
        

