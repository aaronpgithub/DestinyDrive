/// @description Insert description here
// You can write your code in this editor
event_inherited()

if damage = 1 alarm[5] = 10

if laser_collision_shrink = false {
image_yscale = lerp(image_yscale, 1, 0.3)
image_xscale = lerp(image_xscale, 20, 0.3)
} else {
	image_yscale -= 0.1
	
	if image_yscale < 0 instance_destroy()
}

part_type_direction(laser_part_news, angle, angle, 0, 0)

repeat(10) {
	var spy = sprite_height / 2;
	var rand_ldir = random_range(-spy, spy - 5)
	var em_x = xstart + lengthdir_x(rand_ldir, image_angle + 90), em_y = ystart + lengthdir_y(rand_ldir, image_angle + 90);
	part_particles_create(laser_s_news, em_x, em_y, laser_part_news, 1)
}

