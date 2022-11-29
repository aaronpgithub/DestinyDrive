/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if selected = false {
	objPracticeControl.settings_array[2, 1] = -1
}

offset = abs(objPracticeControl.menu_x)

real_scroll = clamp(real_scroll, -(total_scroll), 0)

scroll_amt = lerp(scroll_amt, real_scroll, 0.8)

total_scroll = floor(ds_list_size(enemy_list) / 2) * 32 - 96