event_inherited()

sprite_index = sprBee

if instance_exists(objEnemyParent)
{
motion_set(point_direction(x, y, instance_nearest(x, y, objEnemyParent).x, instance_nearest(x, y, objEnemyParent).y), 3 * global.shot_speed)
}
else
{
motion_set(0, 3 * global.shot_speed)
}

death -= 1

if death <= 0
{
instance_destroy()
}

