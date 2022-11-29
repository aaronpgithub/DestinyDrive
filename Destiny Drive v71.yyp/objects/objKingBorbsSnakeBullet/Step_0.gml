event_inherited()

if x < 0 and bouncywow = true
{
x += 1
angle = random_range(-30, 30)
spd = 4 * global.enemy_spd
}

image_angle = angle

if start = true
{
globalvar angbe;
        angbe = angle
    for(var i = 0; i < 10; i++)
    {
        globalvar spdpd;
        spdpd = spd
        var inst = instance_create(x + lengthdir_x(i * 8, angle), y + lengthdir_y(i * 8, angle), objKingBorbsSnakeBullet)
        if frac(i / 2) = 0
        {
            with(inst)
            {
            start = false
            angle = angbe
            bouncywow = true
            spd = spdpd
            }
        }
        else
        {
            with(inst)
            {
            start = false
            angle = angbe
            bouncywow = false
            spd = spdpd
            }
        }
    }
    start = false
}

if x > 320 and spd > 0 instance_destroy()

