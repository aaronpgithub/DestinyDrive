/// @description Insert description here
// You can write your code in this editor

if selected = true {
	l_menu_alpha = lerp(l_menu_alpha, 1, global.p_lerp_spd)											//Opening menu
} else {
	l_menu_alpha = lerp(l_menu_alpha, 0, global.p_lerp_spd)											//Closing menu
	//with(asset_get_index(object_get_name(object_index) + "Button")) hover = false
}

real_width = max_width * l_menu_alpha