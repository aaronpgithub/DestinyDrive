/// @description alien rifle walls

alarm[5] = 20

globalvar offvar;

for(offvar = -13; offvar <= 13; offvar++)
{
    var alien_rifle = instance_create(x, alien_x, objAlienPixie)

    with(alien_rifle)
    {
    damage = 1
    angle = 0
    spd = -3 * global.enemy_spd
    offset = offvar * 45
    
        if offvar = 0
        {
        sprite_index = sprPixieAlienBullet
        }
    }
}

