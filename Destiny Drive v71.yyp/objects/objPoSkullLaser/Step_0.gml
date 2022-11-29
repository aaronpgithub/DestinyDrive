/// @description Insert description here
// You can write your code in this editor
event_inherited()

if damage = 1 alarm[5] = 10

if laser_collision_shrink = false {
image_yscale = lerp(image_yscale, 1, 0.3)
image_xscale = lerp(image_xscale, 30, 0.3)
} else {
	image_yscale -= 0.1
	
	if image_yscale <= 0 instance_destroy()
}


repeat(10) {
	var em_x = random_range(bbox_left, bbox_right), em_y = random_range(bbox_top + 4, bbox_bottom - 4);
	part_particles_create(laser_s, em_x, em_y, laser_part, 1)
}



var neg = choose(true, false);
if neg = false part_type_direction(laser_part, 180, 180, 0, 0)
if neg = true part_type_direction(laser_part, 0, 0, 0, 0)