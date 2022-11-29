///@param array_position
///@param speed
///@param x
///@param y
///@param default_sprite
///@param depth
function set_decal(argument0, argument1, argument2, argument3, argument4, argument5) {
		var array_position = argument0;
		variable_instance_set(self, "decal_list_" + string(array_position), ds_list_create())
	
		bg[array_position, 0] = argument1 //speed
		bg[array_position, 1] = argument2 //x
		bg[array_position, 2] = argument3 //y
		bg[array_position, 3] = argument4 //sprite
		bg[array_position, 4] = argument4 //sprite
		bg[array_position, 5] = argument4 //sprite
		bg[array_position, 6] = argument4 //default road
		bg[array_position, 7] = 0 //index
		bg[array_position, 8] = 0 //index
		bg[array_position, 9] = 0 //index
		bg[array_position, 10] = 0 //special
		bg[array_position, 11] = 0 //special
		bg[array_position, 12] = 0 //special
		bg[array_position, 13] = "" //decal area
	
		instance_create_depth(0, 0, argument5, objBCKlayer)


}
