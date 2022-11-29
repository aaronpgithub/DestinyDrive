/// @description Insert description here
// You can write your code in this editor

sprite_index = noone //removing debug sprite

demon_surface = surface_create(surface_get_width(application_surface), surface_get_height(application_surface))

visual_lerp = 0

lines_movement = 0

demon_visual = ds_map_find_value(global.item_map, "demon_gift")
ds_map_delete(global.item_map, "demon_gift")

color_shader = choose(solidalpha, invert_color, grayscale)

	switch(demon_visual) {
		case "invert":
		visual_lerp = 0
		break;
		case "invert_color":
		visual_lerp = 0
		break;
		case "zoomglitch":
		visual_lerp = 10
		break;
	}

demon_wave = global.wave

