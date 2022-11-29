if burst > 0
{
    globalvar imagx;
    imagx = image_xscale

    var insbl = instance_create(x, y, objFlippyBullet)
    
        with(insbl)
        {
        damage = 10 * global.dmg
        spd = (random_range(2, 3.5) * global.shot_speed) * imagx
        }
        
        burst -= 1
        
        alarm[1] = 10
}
else
{
alarm[0] = room_speed * 2
}

