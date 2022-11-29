alarm[0] = 40

var hll_shift_inst = instance_create(x, y, objEnemyBullet);

with(hll_shift_inst)
{
spd = 4 * global.enemy_spd
sprite_index = sprHellShifterBullet
damage = 1
angle = point_direction(x, y, objPlayer_x, objPlayer_y)
image_angle = angle
}

champion_bullet(hll_shift_inst)

