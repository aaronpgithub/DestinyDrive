
//finds the value of an item at the position chosen by player

with(objEntpMedallionArrow)
{
instance_destroy()
}

if instance_exists(objEntpMedallionControl)
	with(objEntpMedallionControl)
	{
		ds_map_add(global.item_map, "entp_medal", ds_list_find_value(global.item_pool, itm));
		instance_destroy();
	}

with(objEntpMedallionButton)
{
instance_destroy()
}

