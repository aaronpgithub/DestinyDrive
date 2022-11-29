alarm[0] = random_range(8, 20)

var inst = instance_create(x, y, objEnemyBullet)

with(inst)
{
angle = 270 - random_range(10, 25)
image_angle = angle
spd = 4 * global.enemy_spd

    spawner = instance_nearest(x, y, objCrow).sprite_index
    spawner_x = instance_nearest(x, y, objCrow).x
    spawner_y = instance_nearest(x, y, objCrow).y
}

