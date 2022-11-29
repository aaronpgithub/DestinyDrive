if !instance_exists(objGrapeCarrier)
{
alarm[0] = random_range(60, 90)
}
else
{
alarm[0] = random_range(15, 20)
}

var knight_inst = instance_create(x, y, objEnemyBullet)

with(knight_inst)
{
angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-4, 4)
damage = 1
spd = 4 * global.enemy_spd
sprite_index = sprKnightLaser
image_angle = angle
}

champion_bullet(knight_inst)

