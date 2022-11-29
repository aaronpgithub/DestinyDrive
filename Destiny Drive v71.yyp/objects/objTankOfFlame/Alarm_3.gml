alarm[3] = room_speed * 1.5

var inst = instance_create(x, y, objBigFlak)

with(inst)
{
damage = 4
spd = -4 * global.enemy_spd
angle = random_range(-25, 25)
image_angle = angle
}

