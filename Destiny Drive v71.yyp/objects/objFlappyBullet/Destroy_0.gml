parent_object.alarm[0] = 50

if y < 75 or y > 233
{
globalvar flap_i;
    for(flap_i = 12; flap_i > -1; flap_i--)
    {
    var inst = instance_create(x, y, objBullet);
    
        with(inst)
        {
        angle = 30 * flap_i
        spd = 7 * global.shot_speed
        damage = 7 * global.dmg
        }
    }
}

