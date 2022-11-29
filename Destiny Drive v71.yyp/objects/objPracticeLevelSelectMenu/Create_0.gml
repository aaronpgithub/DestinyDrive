/// @description Insert description here
// You can write your code in this editor

event_inherited()

seen_levels = ds_list_create()	//the levels the player has played before
																	//Snow, City,	Ocean		Temple Psy			Temple Sac		Temple Ruin		Edge	Killroom	TV	Hell	Final Boss		True
ds_list_add(seen_levels, "Wasteland", "Swamp", "Forest", "Volcano", "Snow", "City", "Ocean", "Temple Psychic", "Temple Sacrifice", "Temple Ruin", "Edge", "KillRoom", "TV", "Hell", "Final Boss", "True Final Boss")

lerp_menu = 0					//the width of the black menu square.
l_menu_alpha = 0				//The alpha of this specific menu
real_width = 0					//The lerp width
max_width = 0					//The max width possible, from string_width

var gog;
gog = 0
repeat(ds_list_size(seen_levels)) {
	if instance_exists(objGlobalControl) {
		if ds_list_find_index(objGlobalControl.completed_levels, gog) = -1 {
			ds_list_replace(seen_levels, gog, "?????")
		}
	}
	gog++
}

for(gog = 0; gog < ds_list_size(seen_levels); gog++) {
	
	if string_width(seen_levels[| gog]) > max_width {
		max_width = string_width(seen_levels[| gog])
	}
	
	globalvar button_width;
	button_width = string_width(seen_levels[| gog])
		
	var button_var = instance_create_layer(0, 3 + 12 * gog, "Compatibility_Instances_Depth_-1000000000", objPracticeLevelSelectMenuButton)
	
	with(button_var) {
		image_xscale = button_width + 3 //plus two because of outline
	}
}

max_width += 9					//for outline and offset

max_height = ds_list_size(seen_levels) * 12 + 5

level_select_surface = surface_create(max_width, max_height)