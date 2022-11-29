///@param array_position
///@param boss_name
///@param boss_sprite
///@param boss_object
function boss_add_to_selection(argument0, argument1, argument2, argument3) {

	var practice_array_pos = argument0, boss_name = argument1, boss_sprite = argument2, boss_object = argument3;

	boss_select[practice_array_pos, 0] = boss_name
	boss_select[practice_array_pos, 1] = boss_sprite
	boss_select[practice_array_pos, 2] = boss_object


}
