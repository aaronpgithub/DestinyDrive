///@param gem_number
///@param gem_string
///@param stat
function test_use_item_gem(argument0, argument1, argument2) {

	var gem = argument0;
	var gem_string = argument1;
	var stat_amt = argument2;

	if global.use_itm[0] = gem or global.use_itm[3] = gem {
		if ds_map_find_value(global.item_map, gem_string) = 1 {
		ds_map_replace(global.item_map, gem_string, 0)
		return stat_amt;
		}
	} else if ds_map_exists(global.item_map, gem_string) {
		ds_map_delete(global.item_map, gem_string)
		return -(stat_amt);
	}

	return 0;


}
