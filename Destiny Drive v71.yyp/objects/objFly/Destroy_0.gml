event_inherited()

var lil_fly_inst = instance_create(x, y, objEnemyBullet)

with(lil_fly_inst)
{
angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-7, 7)
spd = 3 * global.enemy_spd
damage = 2
image_angle = angle
}

champion_bullet(lil_fly_inst)

