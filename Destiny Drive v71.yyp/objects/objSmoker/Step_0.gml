var sminst;
sminst = instance_create(x + random_range(-17, -15), y - 12, objSmoke)

with(sminst)
{
image_xscale = 0
image_yscale = 0
spd = random_range(-3, -2)
raise = random_range(0.2, 0.5)
image_speed = random_range(0.001, 0.02)
}


