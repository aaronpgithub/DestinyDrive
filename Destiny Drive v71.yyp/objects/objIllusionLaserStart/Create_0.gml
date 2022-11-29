var inst;
image_angle = choose(random_range(10, 25), random_range(338, 348))
alarm[0] = room_speed * 15
fade = false

inst = instance_create(x, y, objIllusionLaser)

with(inst)
image_angle = objIllusionLaserStart.image_angle

