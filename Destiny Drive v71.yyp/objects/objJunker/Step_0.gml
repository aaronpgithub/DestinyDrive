event_inherited()

image_speed = 0.005

if alarm[0] <= 20
{
x += random_range(-1, 1)
}

if rotate = false
{
    if hp <= 0 //The first of the 'else' is it being destroyed
    {
		if global.player = sprPlayerBoneBoy {
            t += 18
            t = t mod 360
            y = 4 * sin(degtorad(t)) + pos_y
            image_angle = -4 * sin(degtorad(t))
            image_xscale = -1
            sprite_index = sprJunkerSuprised
            hp = -500
            x = pos_x - sprite_get_width(sprJunkerSuprised)
        } else {
            t += 18
            t = t mod 360
            y = 4 * sin(degtorad(t)) + pos_y
            image_angle = -4 * sin(degtorad(t))
            sprite_index = sprJunkerSuprised
            hp = -500
        }
    }
    else
    {
    alarm[9] = 45
    y = 4 * sin(degtorad(t)) + pos_y
    //t += 4
    }
}
else
{
    if hp <= 0 //The first of the 'else' is it being destroyed
    {
    t += 18
    t = t mod 360
    image_angle = -4 * sin(degtorad(t))
    sprite_index = sprJunkerSuprised
    hp = -500
    }
    else
    {
    alarm[9] = 45
    }
}

