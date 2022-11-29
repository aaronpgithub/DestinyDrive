event_inherited()

if alarm[0] < 60 or x < cutoff
{
    if spd < 0
    {
    spd += 0.5 * global.enemy_spd
    }
    else
    {
    spd = 0
    }
motion_set(angle, spd)
}

