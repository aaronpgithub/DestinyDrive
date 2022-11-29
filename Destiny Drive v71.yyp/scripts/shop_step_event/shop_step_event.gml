function shop_step_event() {
	if x > room_width / 2 and bye = false
	{
	global.shop_string = global.shop_string_arr[0, 0]
	x -= 2
	}

	    //set position all the damn time
	    with(instance_find(objBuyButton, 0))
	    {
	    x = objShop.x - 90
	    y = objShop.y - 95
	    }
    
	    with(instance_find(objBuyButton, 1))
	    {
	    x = objShop.x - 40
	    y = objShop.y - 95
	    }
    
	    with(instance_find(objBuyButton, 2))
	    {
	    x = objShop.x + 10
	    y = objShop.y - 95
	    }
    
	    with(instance_find(objBuyButton, 3))
	    {
	    x = objShop.x + 60
	    y = objShop.y - 95
	    }
    
	    with(instance_find(objExitButton, 0))
	    {
	    x = objShop.x + 110
	    y = objShop.y - 95
	    }



}
