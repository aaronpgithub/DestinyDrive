event_inherited()

hp_set(1500)

image_speed = 0.1

spd = 4

t = 0

wait_amount = 3

attack_choice = 0

hp_sine = round(max_hp / 3) //this is when the worm is at max amp
amp_lerp = 0

repeat(10)
{
instance_create(x + 20, y, objParasiteWormBody)
}

lasang = road_random()
shot_las = false