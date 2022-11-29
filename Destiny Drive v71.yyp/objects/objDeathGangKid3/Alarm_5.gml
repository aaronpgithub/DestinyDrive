if instance_exists(objDeathGang)
{
    if objDeathGang.alarm[11] > 0 or burst < 0
    {
    burst = 0
    alarm[5] = room_speed * random_range(9, 11)
    }
    else
    {
    alarm[5] = 1
            
            for(var i = 1; i < 20; i++)
            {
                globalvar speedy;
                
                    speedy = 6 / i;
                
                var neishtbul = instance_create(x, y, objEnemyBullet)
            
                with(neishtbul)
                {
                spd = speedy * global.enemy_spd
                damage = 1
                angle = point_direction(x, y, objPlayer_x, objPlayer_y)
                image_angle = angle
                sprite_index = sprEnemyBullet
                }
            }
            
            burst -= 1
    }
}


