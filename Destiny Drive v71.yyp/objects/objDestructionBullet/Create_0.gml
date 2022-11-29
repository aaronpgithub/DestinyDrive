/// @description Insert description here
// You can write your code in this editor
event_inherited()

//draw a short line of trajectory
//shoot delayed from each other

len = 55
destruction_id = -1
spd = 0

show_debug_message(string(instance_find( objEnemyParent, irandom( instance_number(objEnemyParent) ) )))

if instance_exists(objEnemyParent) {
	destruction_id = instance_nearest(x, y, objEnemyParent)
	angle = point_direction(x, y, destruction_id.x, destruction_id.y)
} else angle = random_range(-30, 30)

alarm[5] = 30 + instance_number(objDestructionBullet) * 15

sprite_index = sprEnemyCannonball