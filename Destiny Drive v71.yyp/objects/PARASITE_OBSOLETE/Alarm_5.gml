/// @description wavy hell

alarm[5] = 5

for(var wavang = 2; wavang >= -2; wavang--)
{
    var dothewave = instance_create(x, y, objWavyAcidBullet)

    with(dothewave)
    {
    angle = 0 + (20 * wavang)
    damage = 1
    spd = -3 * global.enemy_spd
    }
}

