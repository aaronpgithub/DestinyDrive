/// @description bullet wall

if global.hp > 0
{
    alarm[2] = 60
    
    if pause = false
    {
    var up = choose(0, 44);
        
        for(wall_pos = 1; wall_pos > -1; wall_pos--)
        {
        var time_wall_inst = instance_create(x, y + (30 * sin(degtorad(t))) - 60 + (8 * wall_pos) + up + 8, objEnemyTimeBullet)
        
            with(time_wall_inst)
            {
            spd = -2
            angle = 0
            }
        }
    }
}

