/// @description Insert description here
// You can write your code in this editor
event_inherited()

dont_dest = true
no_move_destroy = false

laser_collision_shrink = false

spd = 0

image_xscale = 0
image_yscale = 0

depth = -1000

laser_part_news = part_type_create()
part_type_direction(laser_part_news, angle, angle, 0, 0)
part_type_life(laser_part_news, 60, 300)
part_type_speed(laser_part_news, 4, 7, 0, 0)
part_type_sprite(laser_part_news, sprLaserParticle, false, true, false)
laser_s_news = part_system_create()

alarm[9] = room_speed * 10

news_piepee = 0