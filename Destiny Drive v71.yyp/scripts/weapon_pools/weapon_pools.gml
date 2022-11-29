function weapon_pools() {
	ds_list_clear(global.weapon_pool)

	switch(global.level)
	{
	case "wasteland":

	ds_list_add(global.weapon_pool, 0, 1, 2, 3, 5, 6, 7, 8, 20)

	break;

	case "swamp":

	ds_list_add(global.weapon_pool, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 20)

	break;

	case "forest":

	ds_list_add(global.weapon_pool, 3, 10, 12, 15, 16, 22, 23)

	break;

	case "volcano":

	ds_list_add(global.weapon_pool, 12, 17, 21, 22, 25, 27, 39)

	break;

	case "hell":

	ds_list_add(global.weapon_pool, 12, 17, 21, 22, 25, 27, 39)

	break;

	case "snow":

	ds_list_add(global.weapon_pool, 17, 18, 21, 22, 25, 26, 27, 39)

	break;

	case "killroom":

	    for(var gunamt = sprite_get_number(sprGun) - 1; gunamt >= 0; gunamt--)
	    {
	    ds_list_add(global.weapon_pool, gunamt)
	    }

	break;
	}



}
