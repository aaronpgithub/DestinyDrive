event_inherited()

if alarm[0] < room_speed * 0.5
{
    if spd < 0
    {
    spd += 0.09 * global.enemy_spd
    }
    else
    {
    spd = 0
    }
motion_set(angle, spd)
}

