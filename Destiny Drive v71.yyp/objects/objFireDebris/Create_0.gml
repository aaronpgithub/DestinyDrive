depth = choose(20, 24, 28)
image_speed = random_range(0.005, 0.05)

if depth = 20
{
image_xscale = random_range(0.5, 0.6)
spd = random_range(6, 8)
}

if depth = 24
{
image_xscale = random_range(0.3, 0.4)
spd = random_range(5, 6)
}

if depth = 28
{
image_xscale = random_range(0.1, 0.2)
spd = random_range(3, 5)
}

image_yscale = image_xscale

if global.hp <= 0
{
spd = random_range(-0.3, 0.3)
}

