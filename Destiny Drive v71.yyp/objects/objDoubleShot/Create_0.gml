event_inherited()

hp_set(35)

alarm[0] = random_range(30, 40)

image_speed = 0.2
image_index = random(image_number)

if global.wave >= objGameControl.storm and global.level = "forest" and objGameControl.storm > 0
{
instance_change(choose(objDoubleShot, objDoubleShotFire), true)
}