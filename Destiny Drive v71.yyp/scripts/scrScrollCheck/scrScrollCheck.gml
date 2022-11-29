function scrScrollCheck() {
	switch(ds_list_find_value(global.scroll_add, 0))
	{
	case 6: //Scroll of Weakness
	global.dmg -= 0.4
	ds_map_add(global.scroll, "weakness", 1)
	break;

	case 1: //Scroll of Rage
	global.dmg += 0.4
	ds_map_add(global.scroll, "rage", 1)
	break;

	case 2: //Scroll of Blood
	    if objPlayer.max_hp > 6
	    {
	    objPlayer.max_hp -= 6
	    }
	    else
	    {
	    objPlayer.max_hp = 1
	    }
	global.enemy_hp -= 0.3
	break;

	case 3: //Scroll of Wealth
	    if objPlayer.max_hp > 3
	    {
	    objPlayer.max_hp = 3
	    ds_map_add(global.scroll, "wealth", 1)
	    }
	break;

	case 4: //Scroll of Stone
	global.dmg += 0.3
	ds_map_add(global.scroll, "stone", 1)
	break;

	case 5: //Scroll of Evasiveness
	objPlayer.max_hp = 1
	ds_map_add(global.scroll, "evasiveness", 1)
	break;

	case 0: //Admission to KillRoom
	ds_map_add(global.scroll, "killroom", 1)
	break;
	}

	ds_list_add(global.scroll_list, ds_list_find_value(global.scroll_add, 0))
	ds_list_delete(global.scroll_add, 0)



}
