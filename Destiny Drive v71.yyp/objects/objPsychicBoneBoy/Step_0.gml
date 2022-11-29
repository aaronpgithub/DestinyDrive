event_inherited()

image_speed = 0.005

if hp <= 0 //The first of the 'else' is it being destroyed
{
	if global.player = sprPlayerBoneBoy {
    y = 4 * sin(degtorad(t)) + pos_y
    image_angle = 180 + point_direction(x, y, instance_furthest(x, y, objEnemyParent).x, instance_furthest(x, y, objEnemyParent).y)
    sprite_index = sprPsychicBoneBoySuprised
    hp = -500
    x = pos_x - sprite_get_width(sprite_index)
	} else {
    y = 4 * sin(degtorad(t)) + pos_y
    image_angle = 180 + point_direction(x, y, objPlayer_x, objPlayer_y)
    sprite_index = sprPsychicBoneBoySuprised
    hp = -500
    }
}
else
{
alarm[9] = 45
}

