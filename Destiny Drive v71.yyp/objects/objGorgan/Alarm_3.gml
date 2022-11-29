alarm[3] = 45

var boopdel = irandom(30)
var boopdel2 = irandom(30)
globalvar y_spd;
y_spd = irandom_range(1, 1.2)

for(var boop = 0; boop <= 31; boop++)
{
    if boop < boopdel - 4 or boop > boopdel + 4
    {
        if boop < boopdel2 - 4 or boop > boopdel2 + 4
        {
            var inst = instance_create(x, 64 + (boop * 8), objGorganWall)
            
                with(inst)
                {
                damage = 1
                spd = -2 * global.enemy_spd
                yspd = (3 * global.enemy_spd) * y_spd
                image_angle = angle
                }
        }
    }
}

