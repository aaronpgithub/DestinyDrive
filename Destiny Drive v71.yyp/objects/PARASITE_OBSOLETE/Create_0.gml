event_inherited()

hp_set(1400)

image_speed = 0.1

spd = 4

t = 0

attack_choice = 0

hp_sine = max_hp / 2 //this is when the worm is at max amp
amp_lerp = 0

repeat(10)
{
instance_create(x + 20, y, objParasiteWormBody)
}

