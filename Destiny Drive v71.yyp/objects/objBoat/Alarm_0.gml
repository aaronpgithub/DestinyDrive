if global.hp > 0 and !instance_exists(objShop) and !instance_exists(objItem)
{
    if !instance_exists(objBossParent)
    {
    var caninst = instance_create(x, y, objEnemyCannonball)
    
        with(caninst)
        {
        damage = 1
        }
    }
}
    
alarm[0] = room_speed * random_range(5, 7)

