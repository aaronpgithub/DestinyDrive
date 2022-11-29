///@param item_string
function check_bullet(argument0) {

	//checks if the string you give exists in item map, then checks if the bullet blacklisted that.

	if !ds_exists(bullet_blacklist, ds_type_list) return false;

	if ds_map_exists(global.item_map, argument0) and ds_list_find_index(bullet_blacklist, argument0) = -1 {
		return true;
	} else return false;


}
