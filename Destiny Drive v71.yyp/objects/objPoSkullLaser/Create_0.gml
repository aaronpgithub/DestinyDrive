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

laser_part = part_type_create()
part_type_direction(laser_part, 180, 180, 0, 0)
part_type_life(laser_part, 60, 300)
part_type_speed(laser_part, 4, 7, 0, 0)
part_type_sprite(laser_part, sprLaserParticle, false, true, false)
laser_s = part_system_create()




alarm[9] = room_speed * 10