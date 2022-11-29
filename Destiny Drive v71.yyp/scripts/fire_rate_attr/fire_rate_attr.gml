function fire_rate_attr(argument0) {
	if ds_map_exists(global.item_map, "adrenaline") and object_index = objPlayer and object_index = objPlayer2
	{
	    if global.hp < instance_find(objPlayer, 0).max_hp * 0.75 and global.hp > instance_find(objPlayer, 0).max_hp * 0.5
	    {
	    alarm[argument0] = alarm[argument0] * 0.75
	    }
    
	    if global.hp < instance_find(objPlayer, 0).max_hp * 0.5 and global.hp > instance_find(objPlayer, 0).max_hp * 0.25
	    {
	    alarm[argument0] = alarm[argument0] * 0.6
	    }
    
	    if global.hp < instance_find(objPlayer, 0).max_hp * 0.25
	    {
	    alarm[argument0] = alarm[argument0] * 0.5
	    }
	}

	if object_index != objPlayer and object_index != objPlayer2
	{
	    if hp < max_hp * 0.5
	    {
	    alarm[argument0] = alarm[argument0] * 0.75
	    }
	}



}
