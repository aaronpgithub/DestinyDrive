/// @description fire wall
alarm[5] = 70

var inst = instance_create(320, random_range(85, 220), objFireBurst)
    
        with(inst)
        {
        image_speed = 0.005
        spd = -6 * global.enemy_spd
        angle = 0
        image_angle = random(360)
        }

