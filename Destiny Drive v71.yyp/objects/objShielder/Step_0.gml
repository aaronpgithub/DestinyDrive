event_inherited()

///change the sprite

if alarm[2] <= 0
{
    if objPlayer_x > 70
    {
        if sprite_index = sprShielder
        {
        sprite_index = sprShielderBreak
        }
    }
    else if burst = 0
    {
    sprite_index = sprShielder
    }
}
else
{
sprite_index = sprShielder
}

