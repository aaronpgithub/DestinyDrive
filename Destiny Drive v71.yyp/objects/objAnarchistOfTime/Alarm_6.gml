/// @description sine wave bullet creation    
alarm[6] = 8

    if pause = false
    {
        sped += choose(-0.14, 0.14)
        
        if sped > 1.5
        {
        sped = 0.14
        }

        for(time_sine = 0; time_sine < 32; time_sine++)
        {
            if time_sine * 8 <= y + (30 * sin(degtorad(t))) - 120 or time_sine * 8 >= y + (30 * sin(degtorad(t))) - 60
            {
            var time_inst_2 = instance_create(x, 64 + (time_sine * 8), objEnemyTimeBullet)
            
                with(time_inst_2)
                {
                spd = -2
                angle = 0
                }
            }
        }
    }

