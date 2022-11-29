event_inherited()

hp_set(35)

image_speed = 0
image_index = 0

burst_time = choose(100, 150)
burst = 0

alarm[6] = burst_time

alarm[5] = random_range(room_speed * 2, room_speed * 4)

if global.wave >= objGameControl.storm and global.level = "forest" and objGameControl.storm > 0
{
instance_change(choose(objTurretCar, objTurretCarFire), true)
}

