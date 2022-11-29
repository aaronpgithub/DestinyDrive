event_inherited()

    repeat(5)
    {
        var miniuinst = instance_create(x - 5, y, objMiniFire)
        
        with(miniuinst)
        {
        sprite_index = sprMiniFire
        damage = 1
        spd = 7
        angle = random(360)
        }
    }

