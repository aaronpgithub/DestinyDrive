///@param array_position
///@param new_default
///@param old_default
///@param further_transitions
function decal_transition(argument0, argument1, argument2) {

	var array_position = argument0
	var decal_list = variable_instance_get(self, "decal_list_" + string(array_position));
	var new_default = argument1
	var old_default = argument2

	if bg[array_position, 6] = new_default exit;

		ds_list_clear(decal_list)
		ds_list_add(decal_list, old_default, new_default, new_default)
		bg[array_position, 6] = new_default
	
	


}
