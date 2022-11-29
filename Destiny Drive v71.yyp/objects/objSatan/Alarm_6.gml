if global.hp > 0 and !instance_exists(objParentWeak)
{
    if burst > 0
    {
    var snakehell = instance_create(330, 160, objHellSnake)
    
        with(snakehell)
        {
        angle = objSatan.ran_dang
        spd = -4 * global.enemy_spd
        damage = 1
        
        image_angle = angle
        }
        
        alarm[6] = 20
    }
}

