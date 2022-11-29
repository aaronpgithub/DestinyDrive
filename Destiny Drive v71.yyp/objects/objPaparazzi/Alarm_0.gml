/// @description Insert description here
// You can write your code in this editor

if instance_exists(objRadicalMan) {

	alarm[0] = 30 + (-10 + (10 * (objRadicalMan.alarm[0] / (room_speed * 20)) ))

	globalvar ohboy;
	ohboy = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0)

	var weredoinit = instance_create(random_range(0, room_width), 300, objPicture)

	with(weredoinit) {
		sprite_index = ohboy
		image_xscale = 0.05
		image_yscale = 0.05
		pic_x = random_range(15, room_width - 70)
		pic_y = random_range(road_y_min, road_y_max - 30)
	}

}