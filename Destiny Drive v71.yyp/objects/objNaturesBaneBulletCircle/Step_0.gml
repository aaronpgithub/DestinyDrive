if !instance_exists(objNaturesBaneCircleBullet)
{
dis_multiplier += 0.5
}

x = lerp(x, pos_x, 0.01)
y = lerp(y, pos_y, 0.01)

if global.hp <= 0
{
dis_multiplier += 0.5
}

if instance_exists(objNaturesBane)
{
    if objNaturesBane.attack_choice != 3
    {
    instance_destroy()
    }
}
else
{
instance_destroy()
}

