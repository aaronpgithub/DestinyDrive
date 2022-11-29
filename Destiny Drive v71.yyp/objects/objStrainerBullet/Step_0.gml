event_inherited()

y += 4 * global.enemy_spd

if instance_exists(objStrainer)
{
    x = lerp(x, objStrainer.strain, lerp_amt) + random_range(-1.5, 1.5)
}

if y > room_height instance_destroy()

