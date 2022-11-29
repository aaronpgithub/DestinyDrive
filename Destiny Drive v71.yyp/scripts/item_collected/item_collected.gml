function item_collected(argument0) {
	ds_list_delete(global.item_pool, ds_list_find_index(global.item_pool, argument0))

	/////////////////////
        
	ds_list_shuffle(global.item_pool) //SHUFFLING THE ITEM POOL

	with(objBuyButton) item_seperate_pool()
	with(objItem) item_seperate_pool()


}
