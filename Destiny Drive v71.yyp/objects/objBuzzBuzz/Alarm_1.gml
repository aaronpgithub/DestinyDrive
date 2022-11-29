/// @description shooting
var buzzbuzz_inst;

burst -= 1

    if burst > 0
    {
    alarm[1] = 34
    
        repeat(2)
        {
        buzzbuzz_inst = instance_create(x - 31, y - 8, objBanditBullet)
        
            with(buzzbuzz_inst)
            {
            angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-24, 24)
            spd = 3 * global.enemy_spd
            damage = 1       
                    
            image_angle = angle
            }
            
            champion_bullet(buzzbuzz_inst)
        }
    }

