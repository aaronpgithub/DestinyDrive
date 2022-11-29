alarm[0] = 15

ang += 3

globalvar spiral_ang, angg;

angg = ang

for(spiral_ang = 8; spiral_ang > -1; spiral_ang--)
{
var inst = instance_create(x, y, objEnemyBullet)

    with(inst)
    {
        if y < 150
        {
        angle = (40 * spiral_ang) + angg
        }
        else
        {
        angle = (40 * spiral_ang) + -(angg)
        }
        damage = 1
        spd = 2 * global.enemy_spd
        image_angle = angle
    }
}

