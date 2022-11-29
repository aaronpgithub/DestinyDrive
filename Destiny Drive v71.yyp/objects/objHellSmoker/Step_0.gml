if hp <= 0
{
    repeat(15)
    {
        var inst;
        inst = instance_create(x + random_range(-15, -10), y - 6, objSmoke)
        
        with(inst)
        {
        spd = random_range(-3, -2)
        raise = random_range(0.2, 0.8)
        grow = random_range(0.002, 0.02)
        image_speed = random_range(0.0005, 0.002)
        }
    }
    instance_destroy()
}
else
{
y = 4 * sin(degtorad(t)) + pos_y
t += 2
}

var inst;
inst = instance_create(x + random_range(-17, -15), y - 12, objSmoke)

with(inst)
{
image_xscale = 0
image_yscale = 0
spd = random_range(-3, -2)
raise = random_range(0.2, 0.5)
image_speed = random_range(0.001, 0.02)
}


