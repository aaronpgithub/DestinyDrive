if global.hp > 0 and !instance_exists(objParentWeak)
{
    repeat(3)
    {
        
        var risfir = instance_create(random_range(0, 320), 260 + random_range(-5, 5), objRisingFire)
        
        with(risfir)
        {
        damage = 1
        spd = 3 * global.enemy_spd
        angle = 0
        }
    }
    
    repeat(choose(0, 0, 1))
    {
        var cheekybeeky = instance_create(choose(-10, 330), random_range(60, 245), objSatanBullet)
        
            with(cheekybeeky)
            {
                if x < 150
                {
                spd = 4 * global.enemy_spd
                }
                else
                {
                spd = -4 * global.enemy_spd
                }
                damage = 1
                angle = 0
            }
    }

alarm[2] = 20
}

