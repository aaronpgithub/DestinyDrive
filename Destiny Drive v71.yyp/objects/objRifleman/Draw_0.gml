event_inherited()

if instance_exists(objPlayer) 
{
var point = point_direction(x - (sprite_width / 2), y - (sprite_height / 2), objPlayer.x, objPlayer.y)

draw_set_alpha((randomalarm / alarm[0]) / randomalarm)

draw_line_colour(x - (sprite_width / 2), y - (sprite_height / 2), x - (sprite_width / 2) + lengthdir_x(1000, point), y - (sprite_height / 2) + lengthdir_y(1000, point), c_red, c_red)

draw_set_alpha(1)
}

