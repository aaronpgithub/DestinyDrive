if instance_exists(objBossParent)
{
    instance_create(x, y, objExplosion)
    
    if point_distance(x, y - 8, objPlayer_x, objPlayer_y) <= 25
    {
        with(instance_nearest(x, y, objPlayer))
        {
        player_take_damage(3)
        }
    }
}

