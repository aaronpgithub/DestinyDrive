function reroll_items() {
	if !instance_exists(objItem) and !instance_exists(objBuyButton) exit;

	ds_list_shuffle(global.item_pool)
			
				var usitm_list = ds_list_create(), passive_item_list = ds_list_create(), current_items = ds_list_create(), current_use_items = ds_list_create();
				
					//finding the current items in the shop/boss items
					if instance_exists(objItem) {
						for(var itmamt = 0; itmamt < instance_number(objItem); itmamt++) {
							ds_list_add(current_items, instance_find(objItem, itmamt).image_index)
						}
					}
				
					if instance_exists(objBuyButton) {
						for(var itmamt = 0; itmamt < instance_number(objBuyButton); itmamt++) {
							var buttoninstance = instance_find(objBuyButton, itmamt)
							if buttoninstance.buy_type = 0 ds_list_add(current_items, buttoninstance.buy_id)
							if buttoninstance.buy_type = 1 ds_list_add(current_use_items, buttoninstance.buy_id)
						}
					}
					///////
				
					//finding what current items shouldnt be in the reroll pool, but should still be in the item pool.
					var pool_using = "shop_item_pool";
					var object = objBuyButton
				
					if !instance_exists(objBuyButton) {
						object = objItem
						if global.wave >= global.wave_max pool_using = "boss_item_pool"
					}		
				
					if instance_exists(objItem) {
						var full_pool_name = variable_instance_get(instance_find(object, 0), pool_using)
					}
				
					for(var passive = 0; passive < ds_list_size(full_pool_name); passive++) {
						if ds_list_find_index(current_items, ds_list_find_value(full_pool_name, passive)) = -1 {
						ds_list_add(passive_item_list, ds_list_find_value(full_pool_name, passive))
						}
						ds_list_shuffle(passive_item_list)
					}
					////////
				
					//figuring out what use items should be in the item pool
					for(var usitmpl = 0; usitmpl < sprite_get_number(sprUseItem); usitmpl++) {
						if usitmpl != global.use_itm[0] and usitmpl != global.use_itm[3] and ds_list_find_index(current_use_items, usitmpl) = -1 {
						ds_list_add(usitm_list, usitmpl)
						}
						ds_list_shuffle(usitm_list)
					}
				
	            if instance_exists(objItem)
	            {
					for(var itemamt = 0; itemamt < instance_number(objItem); itemamt++) {
						with(instance_find(objItem, itemamt)) {
						image_index = ds_list_find_value(passive_item_list, itemamt)
	                    buy_id = image_index
						}
					}
	            }
			
				if instance_exists(objBuyButton)
	            {	
					for(var butamt = 0; butamt < instance_number(objBuyButton); butamt++) {
						with(instance_find(objBuyButton, butamt)) {
							if buy_type = 0 {
								var byd = 0;
								byd = ds_list_find_value(passive_item_list, butamt)
			                    buy_id = byd
							}
						
							if buy_type = 1 {
								var byd = 0;
								byd = ds_list_find_value(usitm_list, butamt)
			                    buy_id = byd
							}
						}
					}
	            }
			
				ds_list_destroy(usitm_list)
				ds_list_destroy(passive_item_list)
				ds_list_destroy(current_items)


}
