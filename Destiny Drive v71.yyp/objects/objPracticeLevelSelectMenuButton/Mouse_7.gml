/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(objPracticeControl) and instance_exists(objPracticeLevelSelectMenu) and hover = true {

	var temple_lvl = ""

	var level_selected = string_lower(objPracticeLevelSelectMenu.seen_levels[| menu_button_type])
	
	if string_copy(level_selected, 0, 6) = "temple" {
		temple_lvl = string_copy(level_selected, 8, string_length(level_selected) - 7)
		level_selected = "temple" 
	}
	
	if string_char_at(level_selected, 0) = "?" exit;
	
	objPracticeControl.settings_array[0, 1] = level_selected
	global.level = level_selected
	global.temple_level = temple_lvl
}
