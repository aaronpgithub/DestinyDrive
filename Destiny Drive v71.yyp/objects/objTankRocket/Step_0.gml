y -= spd

spd += 0.1 * global.enemy_spd

x = xstart + choose(-1, 1)

if y < -3
{
instance_create(x + random_range(-150, 180), y, objRocketBullet)
instance_destroy()
}

