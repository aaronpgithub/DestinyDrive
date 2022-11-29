event_inherited()

if object_index = objQueenOfFliesFastMiniboss or object_index = objQueenOfFliesStrongMiniboss
{
    if instance_exists(objQueenOfFlies)
    {
    objQueenOfFlies.attack_amt = round(random_range(2, 3))
    objQueenOfFlies.wait = true
    objQueenOfFlies.alarm[1] = room_speed * 2
    }
}
else
{
	if global.practice = true exit;
	
	var itemsgot = 1
	
        //essence_pity
            var chony = random(1)
        if ds_map_exists(global.item_map, "essence_pity")
        {
            if chony <= 1 * (ds_map_find_value(global.item_map, "essence_pity") / 5)
            {
				if !ds_map_exists(global.item_map, "pickaxe") itemsgot += 1
            }
        }
        /////////////////////////////
		
		if ds_map_exists(global.item_map, "essence_indecision") and global.wave >= global.wave_max
        {
			itemsgot += 1
			ds_map_delete(global.item_map, "essence_indecision")
        }
		
		if instance_exists(objAmethystGhost) and global.wave >= global.wave_max itemsgot += 1
        
        if global.hp > 0
        {
            if !ds_map_exists(global.item_map, "pickaxe")
            {
            global.items_got += itemsgot
            }
            else
            {
                if global.wave < global.wave_max //miniboss creating item
                {
                global.items_got += itemsgot
                }
            }
        
            if global.wave = global.wave_max - 1 ///?????
            {
				if global.level != "final" global.wave += 1
            }
        }
        
        if global.wave >= global.wave_max
        {
        objGameControl.boss_fought = true
        }
        
        if ds_map_exists(global.item_map, "essence_pity") ds_map_replace(global.item_map, "essence_pity", 0)
}



