if global.hp > 0 and !instance_exists(objParentWeak)
{
var ded = irandom(40)

    for(var puke_x = 40; puke_x >= 0; puke_x--)
    {
        if puke_x < ded - 3 or puke_x > ded + 3
        {
            var puuuke = instance_create(puke_x * 8, -10, objSatanBullet)
        
            with(puuuke)
            {
            spd = -7 * global.enemy_spd
            angle = 90
            damage = 1
            sprite_index = sprEnemyBulletMedium
            }
        }
    }

alarm[4] = 40
}

