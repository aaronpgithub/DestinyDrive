/// @description Fractals
alarm[3] = 3

angle += 5

globalvar neg, neg2, idod;
neg = 1
neg2 = 1
idod = 1
repeat(4)
{
    globalvar olio;
    for(olio = 1; olio <= 2; olio++)
    {
    var lgog = instance_create(x + random_range(-3, 3), y + random_range(-3, 4), objTheGlitchBullet)
    
        with(lgog)
        {
        damage = 1
        angle = objTheGlitch.angle * neg * olio
        spd = -3 * neg2 * global.enemy_spd 
        path_length = -1
        }
    }
    
        if frac(idod / 2) = 0
        {
        neg *= -1
        }
        else
        {
        neg2 *= -1
        }
        idod++
}


