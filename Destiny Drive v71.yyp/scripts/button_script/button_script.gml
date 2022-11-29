function button_script(argument0) {
	var item;
	item = argument0

	ds_list_add(global.items, item) //adding item to the visual item box

	if global.item_type_arr[item] = 0 { //checking if you've ever picked up this item
	global.item_type_arr[item] = 1
	}

	ds_list_delete(global.item_pool, ds_list_find_index(global.item_pool, item))

	ds_list_shuffle(global.item_pool) //SHUFFLING THE ITEM POOL


}
