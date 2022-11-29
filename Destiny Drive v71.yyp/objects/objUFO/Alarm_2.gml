/// @description lasers

alarm[2] = 18

repeat(2)
{
    if global.hp > 0
    {
        var lasins = instance_create(x, y, objEnemyBullet)
        
            with(lasins)
            {
            spd = 4
            
            angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-15, 15)
            
            image_angle = angle
            sprite_index = sprUFOLaser
            }
    }
}

//static lasers that dont follow you
repeat(2)
{
    if global.hp > 0
    {
        var lasins2 = instance_create(x, y, objEnemyBullet)
        
            with(lasins2)
            {
            spd = 4
            
            angle = point_direction(x, y, 54, 200) + random_range(-25, 25)
            
            image_angle = angle
            sprite_index = sprUFOLaser
            }
    }
}

