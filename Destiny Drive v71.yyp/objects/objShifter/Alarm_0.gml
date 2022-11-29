alarm[0] = 25

var blk_shift_inst = instance_create(x, y, objEnemyBullet);

with(blk_shift_inst)
{
spd = -4 * global.enemy_spd
sprite_index = sprShifterBullet
damage = 1
angle = 0
image_angle = angle
}

champion_bullet(blk_shift_inst)

