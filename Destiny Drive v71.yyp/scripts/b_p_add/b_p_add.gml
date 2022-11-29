function b_p_add(argument0) {
	if ds_list_find_index(global.item_pool, argument0) != -1 ds_list_add(overlap_item_pool, ds_list_find_value(global.item_pool, ds_list_find_index(global.item_pool, argument0)))


}
