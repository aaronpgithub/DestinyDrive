var handy = 1
if ds_map_exists(global.item_map, "nightinggale_lightning") handy = 2

repeat(handy)
{
    globalvar othdmg;
    var handydandyinst = instance_create(other.x, other.y, objHandBullet)
    
    othdmg = other.damage
    
    with(handydandyinst)
    {
    spd = 0
    damage = othdmg * 5
    pos_x = random_range(-6, 6)
    pos_y = random_range(-6, 6)
    angle = random_range(-5, 5)
    sprite_index = sprBullet
    }
}

with(other)
{
instance_destroy()
}

