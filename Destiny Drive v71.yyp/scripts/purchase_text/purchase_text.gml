function purchase_text() {
	//this script is not only for changing text, but everything that happens when you buy an item
	objShop.text_amount = 0
	purchase = true
	global.shop_string = global.shop_string_arr[2, irandom_range(0, global.purchase_text_amt)]

	if ds_map_exists(global.item_map, "comp_gift")
	{
	    var comp_chance = random(1);
    
	    if comp_chance <= 1 * global.luck
	    {
	    global.hp += 3
	    }
	}



}
