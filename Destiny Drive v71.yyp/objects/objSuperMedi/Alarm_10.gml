
if instance_exists(instance_find(objEnemyParent, heal2))
{
    if instance_find(objEnemyParent, heal2).hp < instance_find(objEnemyParent, heal2).max_hp
    {
        with(instance_find(objEnemyParent, heal2))
        {
        hp += 1
        }
        alarm[10] = 15
    }
}

