
if alarm[11] <= 0
{
    if sprite_index = sprSatan
    {
    sprite_index = sprEvilSatan
    }
    else
    {
    dead = true
    }
    
    for(var alm = 2; alm <= 7; alm++)
    {
    alarm[alm] = -1
    }

wave_create()
}

