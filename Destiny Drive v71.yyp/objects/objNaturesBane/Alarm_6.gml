if objPlayer_x >= x - 30
{
    alarm[6] = 60

    var dead_wall = irandom(12)

    for(var wallfk = 12; wallfk >= 0; wallfk--)
    {
        if wallfk != dead_wall
        {
        instance_create(320, 64 + (wallfk * 16), objNaturesBaneWall)
        }
    }
}

