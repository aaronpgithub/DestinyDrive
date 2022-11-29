/// @description burst
if instance_exists(objBanditCaravan)
{
    if objBanditCaravan.attack_choice != 3 and funneling = false and alarm[8] <= 0 and objBanditCaravan.attack_choice != 5
    {
    burst -= 1
        
        if burst > 0
        {
        alarm[6] = 15
            var mini_burst_inst = instance_create(x - 7, y - 13, objEnemyBullet)
            
            with(mini_burst_inst)
            {
            angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-3, 3)
            spd = 3 * global.enemy_spd
            damage = 1
                       
            image_angle = angle
            }
        }
        else
        {
        alarm[5] = room_speed * random_range(4, 10) //can shoot when not doing normal attack
        }
    }
}


