event_inherited()
if guided = true parent_object.alarm[0] = 50 * global.fire_rate


if outside = false
{
var inst = instance_create(x, y , objViolentExplosion)
    with(inst)
    {
    damage = 20 * global.dmg
    }
}

