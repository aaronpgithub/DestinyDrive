/// @description Mouse Following Spiral

alarm[5] = 7

globalvar to, robob;
to = 0;
robob = random(360)

repeat(30)
{
    var wowee = instance_create(300, road_y_mid, objShriBullet)
    
    with(wowee)
    {
    angle = to + robob
    damage = 1
    spd = -2 * global.enemy_spd
    }
    to += 12
}

