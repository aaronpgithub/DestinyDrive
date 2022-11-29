event_inherited()

for(var angg = 1; angg >= -1; angg--)
{
var inst = instance_create(x, y, objEnemyMiniFire)

    with(inst)
    {
    damage = 1
    spd = 2 * global.enemy_spd
    angle = angg * 23
    image_angle = 180 + angle
    }
}

