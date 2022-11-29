/// @description duplishot

if ds_map_exists(global.item_map, "duplishot")
{
    var g = instance_create(x, y, object_index)
    
    globalvar spdd, angg, dmgg, sprr;
    
    spdd = spd
    angg = angle
    dmgg = damage
    sprr = sprite_index
    
        if object_index = objCannonball
        {
        spdd = vsped
        }
    
    with(g)
    {
    spd = spdd
    damage = dmgg
    angle = angg + random_range(-10, 10)
    sprite_index = sprr
    
        if object_index = objCannonball
        {
        vsped = spdd
        }
    }
}

