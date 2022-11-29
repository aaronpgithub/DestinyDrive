event_inherited()

image_speed = 0.1

if instance_exists(instance_find(objEnemyParent, heal))
{
    if instance_find(objEnemyParent, heal).hp >= instance_find(objEnemyParent, heal).max_hp
    {
    heal += 1
    damaged_x = 0
    damaged_y = 0
    alarm[9] = 15
    }
    else
    {
        if instance_find(objEnemyParent, heal).object_index != objSuperMedi and instance_find(objEnemyParent, heal).object_index != objMediCar and instance_find(objEnemyParent, heal).object_index != objMonk
        {
        damaged_x = instance_find(objEnemyParent, heal).x
        damaged_y = instance_find(objEnemyParent, heal).y - 15
        }
        else
        {
        heal += 1
        damaged_x = 0
        damaged_y = 0
        alarm[9] = 15
        }
    }
}
else
{
heal = 0
damaged_x = 0
damaged_y = 0
}

if instance_exists(instance_find(objEnemyParent, heal2)) and instance_exists(instance_find(objEnemyParent, heal))
{
    if instance_find(objEnemyParent, heal2).hp >= instance_find(objEnemyParent, heal2).max_hp
    {
    heal2 += 1
    damaged_x2 = 0
    damaged_y2 = 0
    alarm[10] = 15
    }
    else
    {
        if instance_find(objEnemyParent, heal2).object_index != objSuperMedi and instance_find(objEnemyParent, heal2).object_index != objMediCar and instance_find(objEnemyParent, heal2).object_index != objMonk
        {
            if heal2 != heal
            {
            damaged_x2 = instance_find(objEnemyParent, heal2).x
            damaged_y2 = instance_find(objEnemyParent, heal2).y - 15
            }
            else
            {
            heal2 += 1
            damaged_x2 = 0
            damaged_y2 = 0
            alarm[10] = 15
            }
        }
        else
        {
        heal2 += 1
        damaged_x2 = 0
        damaged_y2 = 0
        alarm[10] = 15
        }
    }
}
else
{
heal2 = 0
damaged_x2 = 0
damaged_y2 = 0
}



