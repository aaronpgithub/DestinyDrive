alarm[0] = 3 * room_speed

var road_position = irandom_range(road_y_min, road_y_max - 8);
globalvar timer;

for(var ioexec = road_y_min; ioexec < road_y_max; ioexec += 6)
{
    if ioexec < road_position - 17 or ioexec > road_position + 17
    {
        var tint = instance_create(x, ioexec, objIceMageBullet)
        
        timer = abs(ioexec - road_position) / 2
        
            with(tint)
            {
            damage = 1
            angle = 0
            spd = -1.2 * global.enemy_spd
            alarm[0] = timer
            }
    }
}

