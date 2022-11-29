if alarm[0] > 0 exit;

if instance_exists(instance_find(objEnemyParent, big_hp))
{
    x = lerp(x, instance_find(objEnemyParent, big_hp).x, 0.1)
    y = lerp(y, instance_find(objEnemyParent, big_hp).y, 0.1)
    var lolp = instance_find(objEnemyParent, big_hp)
    
    if x > instance_find(objEnemyParent, big_hp).x - 1 and point_distance(x, y, lolp.x, lolp.y) < 5
    {
        with(instance_find(objEnemyParent, big_hp))
        {
        hp -= 600
        }
        
        instance_destroy()
    }
}
else
{
    big_hp = 0
    da_hp = 0

    for(enemy_health = instance_number(objEnemyParent) - 1; enemy_health >= 0; enemy_health--)
    {
        if instance_find(objEnemyParent, enemy_health).hp > da_hp
        {
        big_hp = enemy_health
        da_hp = instance_find(objEnemyParent, enemy_health).hp
        }
    }
}

