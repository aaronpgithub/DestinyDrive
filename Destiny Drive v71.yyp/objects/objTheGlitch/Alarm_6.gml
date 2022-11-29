/// @description blinky
if alarm[0] < room_speed * 10 exit;

alarm[6] = 22

globalvar gerdl, ang5, gord, uhoh;

ang5 = attack5ang

for(gerdl = 0; gerdl <= 320; gerdl += 320)
{
    for(gord = 0; gord <= 250; gord += 250)
    {
        for(uhoh = 0; uhoh < 10; uhoh++)
        {
        var aohl = instance_create(gerdl, gord, objTheGlitchFadeBullet)
        
            with(aohl)
            {
                damage = 1
                angle = ang5 + (36 * uhoh)
                spd = -0.5 * global.enemy_spd
            }
        }
    }
}

attack5ang += irandom_range(3, 6)

