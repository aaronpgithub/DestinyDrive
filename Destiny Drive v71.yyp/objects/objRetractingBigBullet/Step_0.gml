event_inherited()

if instance_exists(objAnarchistOfTime)
{
    if objAnarchistOfTime.alarm[0] <= room_speed * 5
    {
        if spd = 0
        {
            for(fuck = 8; fuck > 0; fuck--)
            {
            var fuck_inst = instance_create(x, y, objEnemyBullet)
            
                with(fuck_inst)
                {
                angle = random_range(-30, 30)
                spd = -3 * global.enemy_spd
                damage = 1
                sprite_index = sprEnemyBulletMedium
                }
            }
        
        spd = -1.5 * global.enemy_spd
        }
        
        motion_set(angle, spd)
    }
    else
    {
    alarm[5] = 15
    }
}

