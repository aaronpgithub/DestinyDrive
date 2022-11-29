/// @description Insert description here
// You can write your code in this editor

event_inherited()

hp_set(70)

image_speed = 0.02
image_index = random(image_number)
angle = point_direction(x, y, 0, road_random())
len = 0

if global.wave >= objGameControl.storm and global.level = "forest" and objGameControl.storm > 0
{
instance_change(choose(objLockedEnemy, objLockerFire), true)
}

