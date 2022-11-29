if global.hp > 0 and !instance_exists(objParentWeak)
{
    for(satan_sine = 0; satan_sine < 32; satan_sine++)
    {
        if satan_sine * 8 <= 150 + (60 * sin(degtorad(t))) - 60 or satan_sine * 8 >= 150 + (60 * sin(degtorad(t))) - 30
        {
        var time_inst_2 = instance_create(320, 64 + (satan_sine * 8), objSatanBullet)
        
            with(time_inst_2)
            {
            spd = -4
            angle = 0
            }
        }
    }

t += 5

alarm[5] = 6
}

