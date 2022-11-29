function wave_item_on_complete() {
	//If you have any items that do something at the end of the round

	//redo
	if global.use_itm[0] = 32 or global.use_itm[3] = 32 {
	ds_map_replace(global.redo_map, "hp", global.hp)
	ds_map_replace(global.redo_map, "money", global.money)
	ds_map_replace(global.redo_map, "shield", global.shields[0])
	ds_map_replace(global.redo_map, "powershields", objPlayer.powershield_amount)
	ds_map_replace(global.redo_map, "alien_charge", global.use_itm[4])
	}
	//

	global.hp -= global.chisel_hp
	global.chisel_hp = 0

	if instance_exists(objDespairShield)
	{
	    with(objDespairShield)
	    {
	        if image_alpha = 0
	        {
	        rounds -= 1
	        }
	    }
	}

		//shields[1] is hard coded shields that you always have, from hard hat and worker's vest
	    if global.shields[0] < global.shields[1]
	    {
	    global.shields[0] = global.shields[1]
	    }

	if ds_map_exists(global.scroll, "evasiveness")
	{
	global.shields[0] += 1
	}

	if ds_map_exists(global.item_map, "toxic")
	{
	    if global.hp > 1 and global.wave != 0 {
	    player_take_damage(1)
	    }
	}

	if ds_map_exists(global.item_map, "rage_pot")
	{
	    if objPlayer.flawless = true
	    {
	        if ds_map_find_value(global.item_map, "rage_pot") < 0.2
	        {
	        global.dmg -= ds_map_find_value(global.item_map, "rage_pot")
            
	        ds_map_replace(global.item_map, "rage_pot", ds_map_find_value(global.item_map, "rage_pot") + 0.04)
            
	        global.dmg += ds_map_find_value(global.item_map, "rage_pot")
	        }
	    }
	    else
	    {
	    ds_map_replace(global.item_map, "rage_pot", 0)
	    global.dmg -= ds_map_find_value(global.item_map, "rage_pot")
	    }
	}

	if ds_map_exists(global.item_map, "death")
	{
	    if global.wave > global.wave_max
	    {
	    global.hp += 5
	    }
	}

	if objPlayer.wave != global.wave
	{
	    if objPlayer.stat != global.luck
	    {
	        switch(objPlayer.stat)
	        {
	        case global.dmg:
	        //global.dmg -= 0.2
	        break;
	        case global.fire_rate:
	        global.fire_rate -= 0.2
	        break;
	        case global.accuracy:
	        global.accuracy -= 0.2
	        break;
	        case global.shot_speed:
	        global.shot_speed -= 0.2
	        break;
	        }
	    }
	}

	if ds_map_exists(global.item_map, "tonic")
	{
	    if global.wave > global.wave_max
	    {
	        switch(ds_map_find_value(global.item_map, "tonic"))
	        {
	            case "damage":
	            global.dmg += 0.05
	            break;
	            case "fire rate":
	            global.fire_rate -= 0.05
	            break;
	            case "shot speed":
	            global.shot_speed += 0.15
	            break;
	            case "accuracy":
	            global.accuracy -= 0.1
	            break;
	            case "luck":
	            global.luck += 0.1
	            break;
	        }
	    }
	}

	        if ds_map_exists(global.item_map, "fridge")
	        {
	            var chaheche = random(1)
            
	            if chaheche < 0.1 * global.luck + (0.01 * global.hp)
	            {
	                ds_map_replace(global.item_map, "fridge", 1)
	            }
	        }
        
			with(objPlayer) {
	        powerhouse_charge += 1
			}



}
