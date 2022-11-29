if rotate = false
{
    if hp <= 0 //The first of the 'else' is it being destroyed
    {
        var found = false;
        
        for(var k = ds_list_size(global.character_trait); k > -1; k--)
        {
            if ds_list_find_value(global.character_trait, k) = "protect the young"
            {
            t += 18
            t = t mod 360
            y = 4 * sin(degtorad(t)) + pos_y
            image_angle = -4 * sin(degtorad(t))
            image_xscale = -1
            sprite_index = sprUnstableJunkerSuprised
            hp = -500
            x = pos_x - sprite_get_width(sprUnstableJunkerSuprised)
            found = true
            }
        }
        
            if found = false
            {
            t += 18
            t = t mod 360
            y = 4 * sin(degtorad(t)) + pos_y
            image_angle = -4 * sin(degtorad(t))
            sprite_index = sprUnstableJunkerSuprised
            hp = -500
            }
    }
    else
    {
    alarm[9] = 45
    y = 4 * sin(degtorad(t)) + pos_y
    t += 4
    }
}
else
{
    if hp <= 0 //The first of the 'else' is it being destroyed
    {
    t += 18
    t = t mod 360
    image_angle = -4 * sin(degtorad(t))
    sprite_index = sprUnstableJunkerSuprised
    hp = -500
    }
    else
    {
    alarm[9] = 45
    }
}

