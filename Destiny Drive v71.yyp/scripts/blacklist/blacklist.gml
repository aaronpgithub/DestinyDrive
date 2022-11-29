function blacklist(argument0) {
	//blacklists an item.

	if ds_exists(bullet_blacklist, ds_type_list) {
		ds_list_add(bullet_blacklist, argument0)
	}


}
