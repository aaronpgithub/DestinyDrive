if hp <= 0
{
sprite_index = sprJunkerSuprised
}
else
{
    if ID = 0
    {
    x = lerp(x, objPlayer_x, 0.7)
    y = lerp(y, objPlayer_y - 15, 0.7)
    }
    else
    {
    x = lerp(x, objPlayer_x, 0.7)
    y = lerp(y, objPlayer_y + 35, 0.7)
    }
alarm[11] = 45
}

