/// @description diag walls

if alarm[0] > room_speed * 4
{
    alarm[6] = 120
    
    globalvar ypos;
    
    for(ypos = 1; ypos >= 0; ypos--)
    {
        var deadbul = irandom_range(10, 25)
    
        for(var xpos = 40; xpos >= 0; xpos--)
        {
            if xpos != deadbul
            {
            var sexysax = instance_create((xpos * 16) + (-64 * ypos), 64 + (ypos * 164), objPixieBullet)
            
                with(sexysax)
                {
                damage = 1
                angle = 45 + (-90 * ypos)
                spd = -1 * global.enemy_spd
                outside_special = true
                }
            }
        }
    }
}

