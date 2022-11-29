if y > target_y
{
    instance_create(x, y, objExplosion)
    
    if point_distance(x, y - 8, objPlayer_x, objPlayer_y) <= 35 and !instance_exists(objShop) and !instance_exists(objItem)
    {
        with(instance_nearest(x, y, objPlayer))
        {
        player_take_damage(5)
        }
    }
}

