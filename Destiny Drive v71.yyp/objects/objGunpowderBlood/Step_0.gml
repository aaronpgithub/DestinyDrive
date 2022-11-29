dis_add += 0.5
dis += dis_add

if wave_active = global.wave
{
    with(objEnemyBulletParent)
    {
        if point_distance(x, y, objGunpowderBlood.x, objGunpowderBlood.y) <= objGunpowderBlood.dis
        {
        instance_destroy()
        }
    }
    
    with(objEnemyParent)
    {
        if point_distance(x, y, objGunpowderBlood.x, objGunpowderBlood.y) <= objGunpowderBlood.dis
        {
            if objGunpowderBlood.wave_active != global.wave_max
            {
            instance_destroy()
            }
            else if objGunpowderBlood.damage = true
            {
            hp -= 300
            objGunpowderBlood.damage = false
            }
        }
    }
}

if dis > 600
{
image_alpha -= 0.05
}

if image_alpha <= 0
{
instance_destroy()
}

if objPlayer.death_avoid = true
{
instance_destroy()
}

